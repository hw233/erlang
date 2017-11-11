%% Auto generated by sproto from chat.sproto
%% Don't edit it.

-module(chat_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("chat_sproto.hrl").

%% id=1  
pkg_msg(?MSG_CHAT_P2P, {Channel, PlayerId, Name, Career, Title, Msg, Type, Duration}) ->
<<?MSG_CHAT_P2P:16, 
Channel,
    PlayerId:64,
    (byte_size(Name)), Name/binary,
    Career,
    Title,
    (byte_size(Msg)):16, Msg/binary,
    Type,
    Duration>>
;

%% id=2  
pkg_msg(?MSG_CHAT_GROUP, {Channel, PlayerId, Name, Career, Title, Msg, Type, Duration}) ->
<<?MSG_CHAT_GROUP:16, 
Channel,
    PlayerId:64,
    (byte_size(Name)), Name/binary,
    Career,
    Title,
    (byte_size(Msg)):16, Msg/binary,
    Type,
    Duration>>
;

%% id=3  
pkg_msg(?MSG_CHAT_SYSTEM, {Msg}) ->
<<?MSG_CHAT_SYSTEM:16, 
(byte_size(Msg)):16, Msg/binary>>
;

%% id=4  
pkg_msg(?MSG_CHAT_SYSTEM_EX, {Id, Val}) ->
<<?MSG_CHAT_SYSTEM_EX:16, 
Id:16,
    (length(Val)):16, (iolist_to_binary([<<(byte_size(Tmp)):16, Tmp/binary>> || Tmp <- Val]))/binary>>
;

%% id=5  
pkg_msg(?MSG_CHAT_SYSTEM_B, {Id, Num}) ->
<<?MSG_CHAT_SYSTEM_B:16, 
Id:16,
    Num:16>>
;

%% id=6  
pkg_msg(?MSG_CHAT_SYSTEM_C, {Id, KindType, Val, EquipVal, PetList}) ->
<<?MSG_CHAT_SYSTEM_C:16, 
Id:16,
    KindType,
    (length(Val)):16, (iolist_to_binary([<<
PosId,
    Type,
    (byte_size(Mes1)):16, Mes1/binary>>
|| {PosId, Type, Mes1} <- Val]))/binary ,
    (length(EquipVal)):16, (iolist_to_binary([<<
PosId,
    Type,
    (byte_size(Mes)):16, Mes/binary,
    Quality,
    QhLevel>>
|| {PosId, Type, Mes, Quality, QhLevel} <- EquipVal]))/binary ,
    (length(PetList)):16, (iolist_to_binary([<<
PosId,
    Type,
    (byte_size(PetId)):16, PetId/binary,
    PetLevel,
    JinjieNum>>
|| {PosId, Type, PetId, PetLevel, JinjieNum} <- PetList]))/binary >>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_CHAT_P2P, Acc0) ->
<<PlayerId:64,
Channel,
MsgLen:16, Msg:MsgLen/binary,
Type,
Duration,
Acc1/binary>> = Acc0,
 {{PlayerId,Channel,Msg,Type,Duration}, Acc1};

%% id = 2  
unpkg_msg(?MSG_CHAT_GROUP, Acc0) ->
<<Channel,
MsgLen:16, Msg:MsgLen/binary,
Type,
Duration,
Acc1/binary>> = Acc0,
 {{Channel,Msg,Type,Duration}, Acc1};

%% id = 3  
unpkg_msg(?MSG_CHAT_SYSTEM, Acc0) ->
<<MsgLen:16, Msg:MsgLen/binary,
Acc1/binary>> = Acc0,
 {{Msg}, Acc1};

%% id = 4  
unpkg_msg(?MSG_CHAT_SYSTEM_EX, Acc0) ->
{{}, Acc0};

%% id = 6  
unpkg_msg(?MSG_CHAT_SYSTEM_C, Acc0) ->
{{}, Acc0};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_CHAT_P2P) -> <<"MSG_CHAT_P2P">>; %% high 13, id 1
to_s(?MSG_CHAT_GROUP) -> <<"MSG_CHAT_GROUP">>; %% high 13, id 2
to_s(?MSG_CHAT_SYSTEM) -> <<"MSG_CHAT_SYSTEM">>; %% high 13, id 3
to_s(?MSG_CHAT_SYSTEM_EX) -> <<"MSG_CHAT_SYSTEM_EX">>; %% high 13, id 4
to_s(?MSG_CHAT_SYSTEM_B) -> <<"MSG_CHAT_SYSTEM_B">>; %% high 13, id 5
to_s(?MSG_CHAT_SYSTEM_C) -> <<"MSG_CHAT_SYSTEM_C">>; %% high 13, id 6
to_s(_) -> <<"unknown msg">>.