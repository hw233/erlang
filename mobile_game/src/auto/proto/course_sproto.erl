%% Auto generated by sproto from course.sproto
%% Don't edit it.

-module(course_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("course_sproto.hrl").

%% id=1  
pkg_msg(?MSG_ENTER_COURSE, {}) ->
<<?MSG_ENTER_COURSE:16>> 
;

%% id=2  
pkg_msg(?MSG_COURSE_PRIZE, {Course_prize}) ->
<<?MSG_COURSE_PRIZE:16, 
(length(Course_prize)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- Course_prize]))/binary >>
;

%% id=3  
pkg_msg(?MSG_COURSE_BEST_PRIZE, {Count, BuyCount, FlushCount, BuyFlushCount, Prize}) ->
<<?MSG_COURSE_BEST_PRIZE:16, 
Count,
    BuyCount,
    FlushCount,
    BuyFlushCount,
    (length(Prize)):16, (iolist_to_binary([<<
CourseInsId:16,
    ItemId:32,
    ItemCount:32>>
|| {CourseInsId, ItemId, ItemCount} <- Prize]))/binary >>
;

%% id=4  
pkg_msg(?MSG_COURSE_BUY_COUNT, {}) ->
<<?MSG_COURSE_BUY_COUNT:16>> 
;

%% id=5  
pkg_msg(?MSG_COURSE_CHALLENGE_BOSS_ENTER, {Succ}) ->
<<?MSG_COURSE_CHALLENGE_BOSS_ENTER:16, 
Succ>>
;

%% id=6  
pkg_msg(?MSG_COURSE_CHALLENGE_BOSS_PRIZE_INFO, {Prize}) ->
<<?MSG_COURSE_CHALLENGE_BOSS_PRIZE_INFO:16, 
(length(Prize)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- Prize]))/binary >>
;

%% id=7  
pkg_msg(?MSG_COURSE_USE_COUNT, {Count}) ->
<<?MSG_COURSE_USE_COUNT:16, 
Count>>
;

%% id=8  
pkg_msg(?MSG_COURSE_FLUSH_BOSS_INFO, {FlushCount, Prize}) ->
<<?MSG_COURSE_FLUSH_BOSS_INFO:16, 
FlushCount,
    (length(Prize)):16, (iolist_to_binary([<<
CourseInsId:16,
    ItemId:32,
    ItemCount:32>>
|| {CourseInsId, ItemId, ItemCount} <- Prize]))/binary >>
;

%% id=9  
pkg_msg(?MSG_COURSE_FIGHT_DATA_OF_NOT_BOSS, {Course_data}) ->
<<?MSG_COURSE_FIGHT_DATA_OF_NOT_BOSS:16, 
(length(Course_data)):16, (iolist_to_binary([<<
D:16,
    Count>>
|| {D, Count} <- Course_data]))/binary >>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_ENTER_COURSE, Acc0) ->
<<Id:16,
Acc1/binary>> = Acc0,
 {{Id}, Acc1};

%% id = 2  
unpkg_msg(?MSG_COURSE_PRIZE, Acc0) ->
<<Id:16,
Acc1/binary>> = Acc0,
 {{Id}, Acc1};

%% id = 3  
unpkg_msg(?MSG_COURSE_BEST_PRIZE, Acc0) ->
{{}, Acc0};

%% id = 4  
unpkg_msg(?MSG_COURSE_BUY_COUNT, Acc0) ->
<<Type,
Count,
Acc1/binary>> = Acc0,
 {{Type,Count}, Acc1};

%% id = 5  
unpkg_msg(?MSG_COURSE_CHALLENGE_BOSS_ENTER, Acc0) ->
<<CourseInsId:16,
Acc1/binary>> = Acc0,
 {{CourseInsId}, Acc1};

%% id = 8  
unpkg_msg(?MSG_COURSE_FLUSH_BOSS_INFO, Acc0) ->
{{}, Acc0};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_ENTER_COURSE) -> <<"MSG_ENTER_COURSE">>; %% high 38, id 1
to_s(?MSG_COURSE_PRIZE) -> <<"MSG_COURSE_PRIZE">>; %% high 38, id 2
to_s(?MSG_COURSE_BEST_PRIZE) -> <<"MSG_COURSE_BEST_PRIZE">>; %% high 38, id 3
to_s(?MSG_COURSE_BUY_COUNT) -> <<"MSG_COURSE_BUY_COUNT">>; %% high 38, id 4
to_s(?MSG_COURSE_CHALLENGE_BOSS_ENTER) -> <<"MSG_COURSE_CHALLENGE_BOSS_ENTER">>; %% high 38, id 5
to_s(?MSG_COURSE_CHALLENGE_BOSS_PRIZE_INFO) -> <<"MSG_COURSE_CHALLENGE_BOSS_PRIZE_INFO">>; %% high 38, id 6
to_s(?MSG_COURSE_USE_COUNT) -> <<"MSG_COURSE_USE_COUNT">>; %% high 38, id 7
to_s(?MSG_COURSE_FLUSH_BOSS_INFO) -> <<"MSG_COURSE_FLUSH_BOSS_INFO">>; %% high 38, id 8
to_s(?MSG_COURSE_FIGHT_DATA_OF_NOT_BOSS) -> <<"MSG_COURSE_FIGHT_DATA_OF_NOT_BOSS">>; %% high 38, id 9
to_s(_) -> <<"unknown msg">>.
