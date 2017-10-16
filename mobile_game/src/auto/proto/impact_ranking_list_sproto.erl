%% Auto generated by sproto from impact_ranking_list.sproto
%% Don't edit it.

-module(impact_ranking_list_sproto).
-export([pkg_msg/2, unpkg_msg/2, to_s/1]).
-include("impact_ranking_list_sproto.hrl").

%% id=1  
pkg_msg(?MSG_IMPACT_RANKING_LIST_BUY_PRIZE, {Replynum}) ->
<<?MSG_IMPACT_RANKING_LIST_BUY_PRIZE:16, 
Replynum>>
;

%% id=2  
pkg_msg(?MSG_IMPACT_RANKING_LIST_SUIT_INFO, {Suit_list}) ->
<<?MSG_IMPACT_RANKING_LIST_SUIT_INFO:16, 
(length(Suit_list)):16, (iolist_to_binary([<<
Bid:32,
    Count>>
|| {Bid, Count} <- Suit_list]))/binary >>
;

%% id=3  
pkg_msg(?MSG_IMPACT_RANK_BUY_LIST_INFO, {Rank_buy_list}) ->
<<?MSG_IMPACT_RANK_BUY_LIST_INFO:16, 
(length(Rank_buy_list)):16, (iolist_to_binary([<<
Shop_id,
    Count>>
|| {Shop_id, Count} <- Rank_buy_list]))/binary >>
;
pkg_msg(Id, _) -> ok.



%% id = 1  
unpkg_msg(?MSG_IMPACT_RANKING_LIST_BUY_PRIZE, Acc0) ->
<<Id:16,
Acc1/binary>> = Acc0,
 {{Id}, Acc1};
unpkg_msg(Id, _) -> ok.




to_s(?MSG_IMPACT_RANKING_LIST_BUY_PRIZE) -> <<"MSG_IMPACT_RANKING_LIST_BUY_PRIZE">>; %% high 51, id 1
to_s(?MSG_IMPACT_RANKING_LIST_SUIT_INFO) -> <<"MSG_IMPACT_RANKING_LIST_SUIT_INFO">>; %% high 51, id 2
to_s(?MSG_IMPACT_RANK_BUY_LIST_INFO) -> <<"MSG_IMPACT_RANK_BUY_LIST_INFO">>; %% high 51, id 3
to_s(_) -> <<"unknown msg">>.
