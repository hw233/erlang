%%%-------------------------------------------------------------------
%%% @author fengzhu
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. 八月 2017 下午5:28
%%%-------------------------------------------------------------------
-module(lib_config).
-author("fengzhu").

%% API
-export([]).
-compile(export_all).

-define(PATH, "./apps/learn_erlang/data/test.xlsx").

-include("excel_reader.hrl").

%% API exports
-export([
    open/0,
    open/1
]).

%%====================================================================
%% API functions
%%====================================================================
pre_compile() ->
    case rebar_utils:find_files("./apps/learn_erlang/data", ".*\\.xlsx") of
        [] ->
            ok;
        FoundFiles ->
            io:format("FoundFiles:~p~n", [FoundFiles]),
            lists:foreach(
                fun(File) ->
                    write(File)
                end,
                FoundFiles
            )
    end.

open() ->
    open("./apps/learn_erlang/data/a.xlsx").
open(File) when is_list(File) ->
    case check_extension(File) of
        true ->
            do_open(File);
        false ->
            {error, bad_excel_file}
    end;
open(_) ->
    {error, badarg}.

%%====================================================================
%% Internal functions
%%====================================================================
check_extension(File) ->
    FileExtension = filename:extension(File),
    FileExtension == ".xls" orelse FileExtension == ".xlsx".

%% 读excel表
do_open(File) ->
    {ok, ExcelData} = zip:unzip(File, [memory]),

    % prase string table info
    SharedStringsBinary = proplists:get_value("xl/sharedStrings.xml", ExcelData),
    {SharedStringsDoc, _} = xmerl_scan:string(erlang:binary_to_list(SharedStringsBinary)),
    SharedStringXML = xmerl_xpath:string("/sst/si/t", SharedStringsDoc),
    io:format("SharedStringXML:~p~n",[SharedStringXML]),
    {ok, StringTable} = new_excel_string_table(SharedStringXML),

    % parse sheets info
    WorkbookBinary = proplists:get_value("xl/workbook.xml", ExcelData),
    {WorkbookDoc, _} = xmerl_scan:string(erlang:binary_to_list(WorkbookBinary)),
    [#xmlElement{content = SheetsXML}] = xmerl_xpath:string("/workbook/sheets", WorkbookDoc),
    SheetInfos = [new_excel_sheet(SheetXML)||SheetXML <- SheetsXML],

    % load sheets data
    {ok, #excel{sheets =
                lists:foldl(
                    fun(SheetInfo = #excel_sheet{id = SheetId}, AccIn) ->
                        SheetDataFile = lists:concat(["xl/worksheets/sheet", erlang:integer_to_list(SheetId), ".xml"]),
                        SheetDataBinary = proplists:get_value(SheetDataFile, ExcelData),
                        {SheetDataDoc, _} = xmerl_scan:string(erlang:binary_to_list(SheetDataBinary)),
                        [#xmlElement{content = RowsXML}] = xmerl_xpath:string("/worksheet/sheetData", SheetDataDoc),
                        Rows =
                            lists:foldl(
                                fun(RowXML, Acc) ->
                                    Acc ++ [new_excel_row(RowXML, StringTable)]
%%                                    [new_excel_row(RowXML, StringTable) | Acc]
                                end,
                                [],
                                RowsXML
                            ),
                        [SheetInfo#excel_sheet{rows = Rows}|AccIn]
                    end,
                    [], SheetInfos
                )}}.
new_excel_string_table(SharedStringXML) ->
    new_excel_string_table(SharedStringXML, [], 0).
%%    new_excel_string_table(SharedStringXML, dict:new(), 0).

new_excel_string_table([], StringTable, _Index) -> {ok, StringTable};
new_excel_string_table([#xmlElement{content = [#xmlText{value = Value}]}|T], StringTable, Index) ->
%%    io:format("Index:~p~n",[Index]),
%%    NewStringTable = dict:store(Index, Value, StringTable),
    NewStringTable = [{Index, Value}|StringTable],
    new_excel_string_table(T, NewStringTable, Index + 1).

new_excel_sheet(#xmlElement{attributes = Attrs}) ->
    {value, #xmlAttribute{value = SheetName}} = lists:keysearch(name, #xmlAttribute.name, Attrs),
    {value, #xmlAttribute{value = SheetId}} = lists:keysearch(sheetId, #xmlAttribute.name, Attrs),
    #excel_sheet{id = list_to_integer(SheetId), name = SheetName}.


new_excel_row(#xmlElement{attributes = Attrs, content = CellsXML}, StringTable) ->
    {value, #xmlAttribute{value = R}} = lists:keysearch(r, #xmlAttribute.name, Attrs),
    Cells =
        lists:foldl(
            fun(CellXML, Acc) ->
                io:format("CellXML:~p~n", [CellXML]),
                [new_excel_cell(CellXML, StringTable) | Acc]
            end,
            [],
            CellsXML
        ),
    #excel_row{r = list_to_integer(R), cells = Cells}.


%% 如果是空,设置成空列表
new_excel_cell(#xmlElement{attributes = Attrs, content = []}, StringTable) ->
    {value, #xmlAttribute{value = C}} = lists:keysearch(r, #xmlAttribute.name, Attrs),
    case lists:keysearch(t, #xmlAttribute.name, Attrs) of
        false ->
            io:format("========================~n"),
            io:format("========================~n"),
            io:format("========================~n"),
            io:format("========================~n"),
            io:format("========================~n"),
            #excel_cell{c = C, v = []};
        {value, #xmlAttribute{value = _}} ->
%%            io:format("V:~p~n", [V]),
%%            #excel_cell{c = C, v = dict:fetch(list_to_integer(V), StringTable)}
%%            #excel_cell{c = C, v = proplists:get_value(list_to_integer(V), StringTable)}
            #excel_cell{c = C, v = []}
    end;

new_excel_cell(#xmlElement{attributes = Attrs, content = [#xmlElement{content = [#xmlText{value = V}]}]}, StringTable) ->
    io:format("Attr:~p,V:~p~n", [Attrs,V]),
    {value, #xmlAttribute{value = C}} = lists:keysearch(r, #xmlAttribute.name, Attrs),
    case lists:keysearch(t, #xmlAttribute.name, Attrs) of
        false ->
            #excel_cell{c = C, v = V};
        {value, #xmlAttribute{value = _}} ->
%%            io:format("V:~p~n", [V]),
%%            #excel_cell{c = C, v = dict:fetch(list_to_integer(V), StringTable)}
            #excel_cell{c = C, v = proplists:get_value(list_to_integer(V), StringTable)}
    end.

%% 将excel表数据写到erlang文件
write(ExcelFile) ->
    {ok, #excel{sheets = SheetList}}=open(ExcelFile),
    lists:foreach(
        fun(#excel_sheet{id=Id,name=Name,rows=RowList}) ->
            io:format("Id:~p,Name:~p~n",[Id,Name]),
            Path = "./apps/learn_erlang/src/data/",
            FileName = "data_" ++ Name ++ ".erl",
            ModName = filename:basename(FileName, ".erl"),
            Head = lists:flatten(io_lib:format("-module(~s).~n~n-export([get/1]).~n~n", [ModName])),
            Unmatch = lists:flatten(io_lib:format("get(_) -> ~w.\n", [{0, [{0, 0, 0}]}])),

            File= read_line_foreach(RowList,<<>>),

            case file:write_file(Path ++ FileName,
                                 <<(list_to_binary(Head))/binary,
                                   File/binary,
                                   (list_to_binary(Unmatch))/binary
                                 >>)
            of
                ok ->
                    io:format("=======:~p~n", [FileName]),
                    ok;
                E ->
                    io:format("write ~p err ~p", [FileName, E])
            end
        end,
        lists:reverse(SheetList)
    ).

get_cell_list(CellList) ->
    lists:foldl(
        fun(#excel_cell{c=_C, v= V}, Acc) ->
%%            io:format("V:~p~n",[V]),
            Acc ++ [list_to_term(V)]
%%            [V|Acc]
%%            erlang:append_element(Acc, V)
        end,
        [],
        lists:reverse(CellList)
    ).

list_to_term(String) ->
    case erl_scan:string(String++".") of
        {ok, T, _} ->
            case erl_parse:parse_term(T) of
                {ok, Term} ->
                    Term;
                {error, _} ->
                    String
            end;
        {error,_,_} ->
            String
    end.

read_line_foreach([], Result) ->
    Result;
read_line_foreach([Row|RowList], Result) ->
    io:format("Row:~p~n", [Row]),
    Bin = read_line_foreach_(Row),
    read_line_foreach(RowList, <<Result/binary, Bin/binary>>).

read_line_foreach_(#excel_row{r=1, cells = CellList}) ->
    <<>>;
read_line_foreach_(#excel_row{r=2, cells = CellList}) ->
    <<>>;
read_line_foreach_(#excel_row{r=R, cells = CellList}) ->
    A = get_cell_list(CellList),
    [First|_] = A,
    io:format("A:~p~n",[A]),
    Fa = lists:flatten(io_lib:format("get(~w) -> ~w;\n",[First, A])),
    <<(list_to_binary(Fa))/binary>>.











