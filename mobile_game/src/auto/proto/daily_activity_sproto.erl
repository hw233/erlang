%% Auto generated by sproto from daily_activity.sproto
%% Don't edit it.

-module(daily_activity_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("daily_activity_sproto.hrl").

%% id=11  
pkg_msg(?PUSH_DAILY_ACTIVITY_INFO, {Type, Buy_count, Fight_count, Fight_totle_count, Pay_count, Pay_totle_count}) ->
<<?PUSH_DAILY_ACTIVITY_INFO:16, 
Type,
    Buy_count,
    Fight_count,
    Fight_totle_count,
    Pay_count,
    Pay_totle_count>>
;

%% id=12  
pkg_msg(?MSG_SELECT_IDS, {}) ->
<<?MSG_SELECT_IDS:16>> 
;

%% id=13  
pkg_msg(?MSG_ENTER_SCENE, {}) ->
<<?MSG_ENTER_SCENE:16>> 
;

%% id=14  
pkg_msg(?PUSH_PRIZE, {PrizeInfo1}) ->
<<?PUSH_PRIZE:16, 
(length(PrizeInfo1)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- PrizeInfo1]))/binary >>
;

%% id=15  
pkg_msg(?PUSH_BOSS_PRIZE, {Scene_id_1, Scene_id_2, Scene_id_3, Scene_id_4, PrizeInfo2}) ->
<<?PUSH_BOSS_PRIZE:16, 
Scene_id_1:32,
    Scene_id_2:32,
    Scene_id_3:32,
    Scene_id_4:32,
    (length(PrizeInfo2)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- PrizeInfo2]))/binary >>
;

%% id=16  
pkg_msg(?PUSH_WAVE_PRIZE, {Is_success, Wave}) ->
<<?PUSH_WAVE_PRIZE:16, 
Is_success,
    Wave>>
;

%% id=17  
pkg_msg(?PUSH_POINT_PRIZE, {Point}) ->
<<?PUSH_POINT_PRIZE:16, 
Point:32>>
;

%% id=18  
pkg_msg(?MSG_DAILY_ACTIVITY_SWEEP, {PrizeInfo}) ->
<<?MSG_DAILY_ACTIVITY_SWEEP:16, 
(length(PrizeInfo)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- PrizeInfo]))/binary >>
;

%% id=19  
pkg_msg(?MSG_DAILY_ACTIVITY_BY_CHALLENGE_TIMES, {ReplyNum}) ->
<<?MSG_DAILY_ACTIVITY_BY_CHALLENGE_TIMES:16, 
ReplyNum>>
;

%% id=20  
pkg_msg(?MSG_DAILY_ACTIVITY_GET_NEW_ACTIVITY_INFO, {Times, Time}) ->
<<?MSG_DAILY_ACTIVITY_GET_NEW_ACTIVITY_INFO:16, 
Times,
    Time:64>>
;

%% id=21  
pkg_msg(?MSG_DAILY_ACTIVITY_4_PUSH_POINT_PRIZE, {Point}) ->
<<?MSG_DAILY_ACTIVITY_4_PUSH_POINT_PRIZE:16, 
Point:32>>
;

%% id=22  
pkg_msg(?MSG_DAILY_ACTIVITY_5_PUSH_POINT_PRIZE, {Point}) ->
<<?MSG_DAILY_ACTIVITY_5_PUSH_POINT_PRIZE:16, 
Point:32>>
;

%% id=23  
pkg_msg(?MSG_DAILY_ACTIVITY_6_FISHING, {PrizeInfo}) ->
<<?MSG_DAILY_ACTIVITY_6_FISHING:16, 
(length(PrizeInfo)):16, (iolist_to_binary([<<
ItemId:32,
    ItemCount:32>>
|| {ItemId, ItemCount} <- PrizeInfo]))/binary >>
;

%% id=24  
pkg_msg(?MSG_DAILY_ACTIVITY_6_BUY_FISHING_COUNT, {Reply}) ->
<<?MSG_DAILY_ACTIVITY_6_BUY_FISHING_COUNT:16, 
Reply>>
;

%% id=25  
pkg_msg(?PUSH_MSG_FISHING_INFO, {Fish_bait, Buy_fish_bait, Fish_net}) ->
<<?PUSH_MSG_FISHING_INFO:16, 
Fish_bait,
    Buy_fish_bait,
    Fish_net>>
;

%% id=26  
pkg_msg(?PUSH_MSG_FISHING_OVER, {}) ->
<<?PUSH_MSG_FISHING_OVER:16>> 
;
pkg_msg(Id, _) -> ok.



%% id = 12  
unpkg_msg(?MSG_SELECT_IDS, Acc0) ->
<<Scene_id_1:32,
Scene_id_2:32,
Scene_id_3:32,
Scene_id_4:32,
Acc1/binary>> = Acc0,
 {{Scene_id_1,Scene_id_2,Scene_id_3,Scene_id_4}, Acc1};

%% id = 13  
unpkg_msg(?MSG_ENTER_SCENE, Acc0) ->
<<Type,
Acc1/binary>> = Acc0,
 {{Type}, Acc1};

%% id = 18  
unpkg_msg(?MSG_DAILY_ACTIVITY_SWEEP, Acc0) ->
<<Type,
Acc1/binary>> = Acc0,
 {{Type}, Acc1};

%% id = 19  
unpkg_msg(?MSG_DAILY_ACTIVITY_BY_CHALLENGE_TIMES, Acc0) ->
<<Type,
Count,
Acc1/binary>> = Acc0,
 {{Type,Count}, Acc1};

%% id = 20  
unpkg_msg(?MSG_DAILY_ACTIVITY_GET_NEW_ACTIVITY_INFO, Acc0) ->
<<Type,
Acc1/binary>> = Acc0,
 {{Type}, Acc1};

%% id = 23  
unpkg_msg(?MSG_DAILY_ACTIVITY_6_FISHING, Acc0) ->
<<Type,
Acc1/binary>> = Acc0,
 {{Type}, Acc1};

%% id = 24  
unpkg_msg(?MSG_DAILY_ACTIVITY_6_BUY_FISHING_COUNT, Acc0) ->
<<Count,
Acc1/binary>> = Acc0,
 {{Count}, Acc1};
unpkg_msg(Id, _) -> ok.




to_s(?PUSH_DAILY_ACTIVITY_INFO) -> <<"PUSH_DAILY_ACTIVITY_INFO">>; %% high 29, id 11
to_s(?MSG_SELECT_IDS) -> <<"MSG_SELECT_IDS">>; %% high 29, id 12
to_s(?MSG_ENTER_SCENE) -> <<"MSG_ENTER_SCENE">>; %% high 29, id 13
to_s(?PUSH_PRIZE) -> <<"PUSH_PRIZE">>; %% high 29, id 14
to_s(?PUSH_BOSS_PRIZE) -> <<"PUSH_BOSS_PRIZE">>; %% high 29, id 15
to_s(?PUSH_WAVE_PRIZE) -> <<"PUSH_WAVE_PRIZE">>; %% high 29, id 16
to_s(?PUSH_POINT_PRIZE) -> <<"PUSH_POINT_PRIZE">>; %% high 29, id 17
to_s(?MSG_DAILY_ACTIVITY_SWEEP) -> <<"MSG_DAILY_ACTIVITY_SWEEP">>; %% high 29, id 18
to_s(?MSG_DAILY_ACTIVITY_BY_CHALLENGE_TIMES) -> <<"MSG_DAILY_ACTIVITY_BY_CHALLENGE_TIMES">>; %% high 29, id 19
to_s(?MSG_DAILY_ACTIVITY_GET_NEW_ACTIVITY_INFO) -> <<"MSG_DAILY_ACTIVITY_GET_NEW_ACTIVITY_INFO">>; %% high 29, id 20
to_s(?MSG_DAILY_ACTIVITY_4_PUSH_POINT_PRIZE) -> <<"MSG_DAILY_ACTIVITY_4_PUSH_POINT_PRIZE">>; %% high 29, id 21
to_s(?MSG_DAILY_ACTIVITY_5_PUSH_POINT_PRIZE) -> <<"MSG_DAILY_ACTIVITY_5_PUSH_POINT_PRIZE">>; %% high 29, id 22
to_s(?MSG_DAILY_ACTIVITY_6_FISHING) -> <<"MSG_DAILY_ACTIVITY_6_FISHING">>; %% high 29, id 23
to_s(?MSG_DAILY_ACTIVITY_6_BUY_FISHING_COUNT) -> <<"MSG_DAILY_ACTIVITY_6_BUY_FISHING_COUNT">>; %% high 29, id 24
to_s(?PUSH_MSG_FISHING_INFO) -> <<"PUSH_MSG_FISHING_INFO">>; %% high 29, id 25
to_s(?PUSH_MSG_FISHING_OVER) -> <<"PUSH_MSG_FISHING_OVER">>; %% high 29, id 26
to_s(_) -> <<"unknown msg">>.
