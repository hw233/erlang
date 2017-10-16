%% Auto generated by sproto from accomplishments.sproto
%% Don't edit it.

-module(accomplishments_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("accomplishments_sproto.hrl").

%% id=1  
pkg_msg(?MSG_ACCOMPLISHMENT_LIST, {AchievementList}) ->
<<?MSG_ACCOMPLISHMENT_LIST:16, 
(length(AchievementList)):16, (iolist_to_binary([<<
Id:32,
    Type_value:32,
    Level,
    Status,
    Extract_reward_level>>
|| {Id, Type_value, Level, Status, Extract_reward_level} <- AchievementList]))/binary >>
;

%% id=2  
pkg_msg(?MSG_ACCOMPLISHMENT_EXTRACT_REWARD, {AchievementID, Extract_reward_level}) ->
<<?MSG_ACCOMPLISHMENT_EXTRACT_REWARD:16, 
AchievementID:32,
    Extract_reward_level>>
;

%% id=3  
pkg_msg(?MSG_ACCOMPLISHMENTS_ACHIEVEMENT_CHANGE, {Id, Level, Type_value}) ->
<<?MSG_ACCOMPLISHMENTS_ACHIEVEMENT_CHANGE:16, 
Id:32,
    Level,
    Type_value:32>>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_ACCOMPLISHMENT_LIST, Acc0) ->
{{}, Acc0};

%% id = 2  
unpkg_msg(?MSG_ACCOMPLISHMENT_EXTRACT_REWARD, Acc0) ->
<<AchievementID:32,
Acc1/binary>> = Acc0,
 {{AchievementID}, Acc1};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_ACCOMPLISHMENT_LIST) -> <<"MSG_ACCOMPLISHMENT_LIST">>; %% high 17, id 1
to_s(?MSG_ACCOMPLISHMENT_EXTRACT_REWARD) -> <<"MSG_ACCOMPLISHMENT_EXTRACT_REWARD">>; %% high 17, id 2
to_s(?MSG_ACCOMPLISHMENTS_ACHIEVEMENT_CHANGE) -> <<"MSG_ACCOMPLISHMENTS_ACHIEVEMENT_CHANGE">>; %% high 17, id 3
to_s(_) -> <<"unknown msg">>.
