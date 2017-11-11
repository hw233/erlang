%% Auto generated by sproto from arena.sproto
%% Don't edit it.

-module(arena_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("arena_sproto.hrl").

%% id=1  
pkg_msg(?MSG_ARENA_MATCH, {ReplyNum}) ->
<<?MSG_ARENA_MATCH:16, 
ReplyNum>>
;

%% id=2  
pkg_msg(?MSG_ARENA_PANEL, {Lev, Cent, Index, Is_first_p2e}) ->
<<?MSG_ARENA_PANEL:16, 
Lev,
    Cent:32,
    Index,
    Is_first_p2e>>
;

%% id=5  
pkg_msg(?MSG_ARENA_RANK, {Size, Awards}) ->
<<?MSG_ARENA_RANK:16, 
Size,
    (length(Awards)):16, (iolist_to_binary([<<
Index,
    Arena_lev,
    PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary,
    PlayerCarrer,
    PlayerPower:32,
    ServerId:32,
    PlayerLev,
    Arena_score:32>>
|| {Index, Arena_lev, PlayerId, PlayerName, PlayerCarrer, PlayerPower, ServerId, PlayerLev, Arena_score} <- Awards]))/binary >>
;

%% id=6  
pkg_msg(?MSG_ARENA_COUNT, {P2eWin, P2eLoss, P2pWin, P2pLoss, P2pKill, MultiP2pWin, MultiP2pLoss, MultiP2pKill}) ->
<<?MSG_ARENA_COUNT:16, 
P2eWin:16,
    P2eLoss:16,
    P2pWin:16,
    P2pLoss:16,
    P2pKill:32,
    MultiP2pWin:16,
    MultiP2pLoss:16,
    MultiP2pKill:32>>
;

%% id=7  
pkg_msg(?MSG_ARENA_RESULT, {Result, Kill, Die, Cent, PlayerHonor, Awards}) ->
<<?MSG_ARENA_RESULT:16, 
Result,
    Kill:16,
    Die:16,
    Cent:16/signed,
    PlayerHonor:32,
    (length(Awards)):16, (iolist_to_binary([<<
ItemBid:32,
    ItemNum:32>>
|| {ItemBid, ItemNum} <- Awards]))/binary >>
;

%% id=9  
pkg_msg(?MSG_ARENA_MULTI_RESULT, {MultiResult}) ->
<<?MSG_ARENA_MULTI_RESULT:16, 
(length(MultiResult)):16, (iolist_to_binary([<<
AllKill:16,
    (length(ResultInfos)):16, (iolist_to_binary([<<
Arena_lev,
    PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary,
    PlayerCarrer,
    PlayerLev,
    ServerId:32,
    Kill:16,
    Die:16,
    Cent:16/signed>>
|| {Arena_lev, PlayerId, PlayerName, PlayerCarrer, PlayerLev, ServerId, Kill, Die, Cent} <- ResultInfos]))/binary >>
|| {AllKill, ResultInfos} <- MultiResult]))/binary >>
;

%% id=8  
pkg_msg(?MSG_ARENA_CANEL_MATCH, {Result}) ->
<<?MSG_ARENA_CANEL_MATCH:16, 
Result>>
;

%% id=101  
pkg_msg(?MSG_ARENA_PLAYER_INFO_CSC, {PlayerInfo}) ->
<<?MSG_ARENA_PLAYER_INFO_CSC:16, 
(begin {PlayerSort, PlayerHonor, PlayerWinStreak, ChallengedCount, BuyCount, CanGetPrize, OverTime}=PlayerInfo, <<
PlayerSort:32,
    PlayerHonor:32,
    PlayerWinStreak:16,
    ChallengedCount:16,
    BuyCount:16,
    CanGetPrize,
    OverTime:32>>
 end)/binary>>
;

%% id=102  
pkg_msg(?MSG_ARENA_SORE_PLAYERS_CSC, {Players, Times}) ->
<<?MSG_ARENA_SORE_PLAYERS_CSC:16, 
(length(Players)):16, (iolist_to_binary([<<
Id:64,
    (byte_size(Name)), Name/binary,
    Rank:32,
    Power:32,
    Career,
    Level,
    (length(EqmL)):16, (iolist_to_binary([<<
Id:32,
    Bid:32,
    Pos,
    Qly,
    Qua:16,
    Bind,
    IsJd,
    SuitId:32,
    QhLev,
    Power:32,
    (length(ExtraAttr)):16, (iolist_to_binary([<<
ExtraModId,
    (length(Attr)):16, (iolist_to_binary([<<
AttrCode,
    AttrVal:32,
    AttrPer>>
|| {AttrCode, AttrVal, AttrPer} <- Attr]))/binary >>
|| {ExtraModId, Attr} <- ExtraAttr]))/binary ,
    (length(GemInfo)):16, (iolist_to_binary([<<GemId:32>> || GemId <- GemInfo]))/binary,
    (length(ItemEx)):16, (iolist_to_binary([<<
Key,
    Val:32>>
|| {Key, Val} <- ItemEx]))/binary ,
    (length(SkillChanges)):16, (iolist_to_binary([<<Id:32>> || Id <- SkillChanges]))/binary,
    (length(JDListMax)):16, (iolist_to_binary([<<Max:32>> || Max <- JDListMax]))/binary,
    (length(JDListMin)):16, (iolist_to_binary([<<Min:32>> || Min <- JDListMin]))/binary,
    Fumo:16,
    (length(FumoAttrList)):16, (iolist_to_binary([<<
TypeId,
    AttrId,
    AttrVal:32>>
|| {TypeId, AttrId, AttrVal} <- FumoAttrList]))/binary >>
|| {Id, Bid, Pos, Qly, Qua, Bind, IsJd, SuitId, QhLev, Power, ExtraAttr, GemInfo, ItemEx, SkillChanges, JDListMax, JDListMin, Fumo, FumoAttrList} <- EqmL]))/binary >>
|| {Id, Name, Rank, Power, Career, Level, EqmL} <- Players]))/binary ,
    Times>>
;

%% id=103  
pkg_msg(?MSG_ARENA_CHALLENGE_PLAYER_CSC, {Ret, Ai, ChallengedCount, PlayerId, Hp, Mp, Sp, Attr, Skills, Skillchanges}) ->
<<?MSG_ARENA_CHALLENGE_PLAYER_CSC:16, 
Ret,
    Ai,
    ChallengedCount:16,
    PlayerId:64,
    Hp:32,
    Mp:32,
    Sp:16,
    (begin {AttId, AttHp, AttMp, AttSp, AttNp, AttStrength, AttIntellect, AttNimble, AttStrong, AttAtk, AttDef, AttCrit, AttBlock, AttPliable, AttPure_atk, AttBreak_def, AttAtk_deep, AttAtk_free, AttAtk_speed, AttPrecise, AttThunder_atk, AttThunder_def, AttFire_atk, AttFire_def, AttIce_atk, AttIce_def, AttMove_speed, AttRun_speed, AttSuckBlood, AttReverse, AttBati}=Attr, <<
AttId,
    AttHp:32,
    AttMp:32,
    AttSp:32,
    AttNp:32,
    AttStrength:32,
    AttIntellect:32,
    AttNimble:32,
    AttStrong:32,
    AttAtk:32,
    AttDef:32,
    AttCrit:32,
    AttBlock:32,
    AttPliable:32,
    AttPure_atk:32,
    AttBreak_def:32,
    AttAtk_deep:32,
    AttAtk_free:32,
    AttAtk_speed:32,
    AttPrecise:32,
    AttThunder_atk:32,
    AttThunder_def:32,
    AttFire_atk:32,
    AttFire_def:32,
    AttIce_atk:32,
    AttIce_def:32,
    AttMove_speed:32,
    AttRun_speed:32,
    AttSuckBlood:32,
    AttReverse:32,
    AttBati:32>>
 end)/binary,
    (length(Skills)):16, (iolist_to_binary([<<Id:32>> || Id <- Skills]))/binary,
    (length(Skillchanges)):16, (iolist_to_binary([<<Id:16>> || Id <- Skillchanges]))/binary>>
;

%% id=104  
pkg_msg(?MSG_ARENA_COMPLETE_CHALLENGE_SC, {Ret, PlayerSort, PlayerHonor, PlayerWinStreak, Diamond_count}) ->
<<?MSG_ARENA_COMPLETE_CHALLENGE_SC:16, 
Ret,
    PlayerSort:32,
    PlayerHonor:32,
    PlayerWinStreak:16,
    Diamond_count:32>>
;

%% id=105  
pkg_msg(?MSG_ARENA_GET_CHALLENGE_PRIZE_CS, {PlayerSort, PirzeID}) ->
<<?MSG_ARENA_GET_CHALLENGE_PRIZE_CS:16, 
PlayerSort:32,
    PirzeID:32>>
;

%% id=106  
pkg_msg(?MSG_ARENA_GET_CHALLENGE_LOG_CSC, {Op_type, LogL}) ->
<<?MSG_ARENA_GET_CHALLENGE_LOG_CSC:16, 
Op_type,
    (length(LogL)):16, (iolist_to_binary([<<
PlayerId:64,
    (byte_size(Name)), Name/binary,
    Job,
    IsAccord,
    Datetime:32,
    IsVictory,
    Ranking:16,
    Honor:32>>
|| {PlayerId, Name, Job, IsAccord, Datetime, IsVictory, Ranking, Honor} <- LogL]))/binary >>
;

%% id=107  
pkg_msg(?MSG_ARENA_BUY_CHALLENGE_COUNT_CSC, {Ret, BuyCount}) ->
<<?MSG_ARENA_BUY_CHALLENGE_COUNT_CSC:16, 
Ret,
    BuyCount:16>>
;

%% id=122  
pkg_msg(?MSG_ARENA_RECEIVE_DUEL, {PlayerId, PlayerName}) ->
<<?MSG_ARENA_RECEIVE_DUEL:16, 
PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary>>
;

%% id=123  
pkg_msg(?MSG_ARENA_DUEL_RET, {PlayerId, PlayerName, ReplyNum}) ->
<<?MSG_ARENA_DUEL_RET:16, 
PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary,
    ReplyNum>>
;

%% id=120  
pkg_msg(?MSG_ARENA_P2E_RANK, {Awards}) ->
<<?MSG_ARENA_P2E_RANK:16, 
(length(Awards)):16, (iolist_to_binary([<<
Index,
    PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary,
    PlayerCarrer,
    PlayerPower:32,
    ServerId:32,
    PlayerLev>>
|| {Index, PlayerId, PlayerName, PlayerCarrer, PlayerPower, ServerId, PlayerLev} <- Awards]))/binary >>
;

%% id=124  
pkg_msg(?MSG_ARENA_DUEL_CLEARING, {Result}) ->
<<?MSG_ARENA_DUEL_CLEARING:16, 
Result>>
;

%% id=125  
pkg_msg(?MSG_ARENA_SHOP_BUY, {Result}) ->
<<?MSG_ARENA_SHOP_BUY:16, 
Result>>
;

%% id=126  
pkg_msg(?MSG_ARENA_P2E_PRIZE_NOTIFY, {Rank, Diamond_count}) ->
<<?MSG_ARENA_P2E_PRIZE_NOTIFY:16, 
Rank:16,
    Diamond_count:32>>
;

%% id=127  
pkg_msg(?MSG_ARENA_PUSH_PLAYER_INFO, {PlayerInfo}) ->
<<?MSG_ARENA_PUSH_PLAYER_INFO:16, 
(length(PlayerInfo)):16, (iolist_to_binary([<<
Party,
    PlayerId:64,
    (byte_size(PlayerName)), PlayerName/binary,
    PlayerJob,
    PlayerLev,
    PlayerPower:32,
    (length(EquipList)):16, (iolist_to_binary([<<EquipBid:32>> || EquipBid <- EquipList]))/binary,
    (length(EftsList)):16, (iolist_to_binary([<<EftBid:16>> || EftBid <- EftsList]))/binary>>
|| {Party, PlayerId, PlayerName, PlayerJob, PlayerLev, PlayerPower, EquipList, EftsList} <- PlayerInfo]))/binary >>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_ARENA_MATCH, Acc0) ->
<<ArenaType,
Acc1/binary>> = Acc0,
 {{ArenaType}, Acc1};

%% id = 2  
unpkg_msg(?MSG_ARENA_PANEL, Acc0) ->
{{}, Acc0};

%% id = 5  
unpkg_msg(?MSG_ARENA_RANK, Acc0) ->
<<StartPos,
Len,
Acc1/binary>> = Acc0,
 {{StartPos,Len}, Acc1};

%% id = 6  
unpkg_msg(?MSG_ARENA_COUNT, Acc0) ->
{{}, Acc0};

%% id = 8  
unpkg_msg(?MSG_ARENA_CANEL_MATCH, Acc0) ->
{{}, Acc0};

%% id = 101  
unpkg_msg(?MSG_ARENA_PLAYER_INFO_CSC, Acc0) ->
{{}, Acc0};

%% id = 102  
unpkg_msg(?MSG_ARENA_SORE_PLAYERS_CSC, Acc0) ->
<<Type,
Acc1/binary>> = Acc0,
 {{Type}, Acc1};

%% id = 103  
unpkg_msg(?MSG_ARENA_CHALLENGE_PLAYER_CSC, Acc0) ->
<<PlayerID:64,
Acc1/binary>> = Acc0,
 {{PlayerID}, Acc1};

%% id = 105  
unpkg_msg(?MSG_ARENA_GET_CHALLENGE_PRIZE_CS, Acc0) ->
{{}, Acc0};

%% id = 106  
unpkg_msg(?MSG_ARENA_GET_CHALLENGE_LOG_CSC, Acc0) ->
{{}, Acc0};

%% id = 107  
unpkg_msg(?MSG_ARENA_BUY_CHALLENGE_COUNT_CSC, Acc0) ->
<<BuyCount,
Acc1/binary>> = Acc0,
 {{BuyCount}, Acc1};

%% id = 121  
unpkg_msg(?MSG_ARENA_DUEL, Acc0) ->
<<PlayerId:64,
Acc1/binary>> = Acc0,
 {{PlayerId}, Acc1};

%% id = 122  
unpkg_msg(?MSG_ARENA_RECEIVE_DUEL, Acc0) ->
<<PlayerId:64,
IsArgee,
Acc1/binary>> = Acc0,
 {{PlayerId,IsArgee}, Acc1};

%% id = 120  
unpkg_msg(?MSG_ARENA_P2E_RANK, Acc0) ->
<<StartPos,
Len,
Acc1/binary>> = Acc0,
 {{StartPos,Len}, Acc1};

%% id = 125  
unpkg_msg(?MSG_ARENA_SHOP_BUY, Acc0) ->
<<Index:16,
Acc1/binary>> = Acc0,
 {{Index}, Acc1};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_ARENA_MATCH) -> <<"MSG_ARENA_MATCH">>; %% high 20, id 1
to_s(?MSG_ARENA_PANEL) -> <<"MSG_ARENA_PANEL">>; %% high 20, id 2
to_s(?MSG_ARENA_RANK) -> <<"MSG_ARENA_RANK">>; %% high 20, id 5
to_s(?MSG_ARENA_COUNT) -> <<"MSG_ARENA_COUNT">>; %% high 20, id 6
to_s(?MSG_ARENA_RESULT) -> <<"MSG_ARENA_RESULT">>; %% high 20, id 7
to_s(?MSG_ARENA_MULTI_RESULT) -> <<"MSG_ARENA_MULTI_RESULT">>; %% high 20, id 9
to_s(?MSG_ARENA_CANEL_MATCH) -> <<"MSG_ARENA_CANEL_MATCH">>; %% high 20, id 8
to_s(?MSG_ARENA_PLAYER_INFO_CSC) -> <<"MSG_ARENA_PLAYER_INFO_CSC">>; %% high 20, id 101
to_s(?MSG_ARENA_SORE_PLAYERS_CSC) -> <<"MSG_ARENA_SORE_PLAYERS_CSC">>; %% high 20, id 102
to_s(?MSG_ARENA_CHALLENGE_PLAYER_CSC) -> <<"MSG_ARENA_CHALLENGE_PLAYER_CSC">>; %% high 20, id 103
to_s(?MSG_ARENA_COMPLETE_CHALLENGE_SC) -> <<"MSG_ARENA_COMPLETE_CHALLENGE_SC">>; %% high 20, id 104
to_s(?MSG_ARENA_GET_CHALLENGE_PRIZE_CS) -> <<"MSG_ARENA_GET_CHALLENGE_PRIZE_CS">>; %% high 20, id 105
to_s(?MSG_ARENA_GET_CHALLENGE_LOG_CSC) -> <<"MSG_ARENA_GET_CHALLENGE_LOG_CSC">>; %% high 20, id 106
to_s(?MSG_ARENA_BUY_CHALLENGE_COUNT_CSC) -> <<"MSG_ARENA_BUY_CHALLENGE_COUNT_CSC">>; %% high 20, id 107
to_s(?MSG_ARENA_DUEL) -> <<"MSG_ARENA_DUEL">>; %% high 20, id 121
to_s(?MSG_ARENA_RECEIVE_DUEL) -> <<"MSG_ARENA_RECEIVE_DUEL">>; %% high 20, id 122
to_s(?MSG_ARENA_DUEL_RET) -> <<"MSG_ARENA_DUEL_RET">>; %% high 20, id 123
to_s(?MSG_ARENA_P2E_RANK) -> <<"MSG_ARENA_P2E_RANK">>; %% high 20, id 120
to_s(?MSG_ARENA_DUEL_CLEARING) -> <<"MSG_ARENA_DUEL_CLEARING">>; %% high 20, id 124
to_s(?MSG_ARENA_SHOP_BUY) -> <<"MSG_ARENA_SHOP_BUY">>; %% high 20, id 125
to_s(?MSG_ARENA_P2E_PRIZE_NOTIFY) -> <<"MSG_ARENA_P2E_PRIZE_NOTIFY">>; %% high 20, id 126
to_s(?MSG_ARENA_PUSH_PLAYER_INFO) -> <<"MSG_ARENA_PUSH_PLAYER_INFO">>; %% high 20, id 127
to_s(_) -> <<"unknown msg">>.