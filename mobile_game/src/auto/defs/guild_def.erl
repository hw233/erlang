%% Auto generated by defs from guild.def
%% Don't edit it.

-module(guild_def).
-compile([export_all]).

-include("guild_def.hrl").

%% enum msg_guild_tech_lvup 
msg_guild_tech_lvup_to_s(?ERR_GUILD_NO_THIS_TECH_BUILDINGID) -> <<"ERR_GUILD_NO_THIS_TECH_BUILDINGID">>;
msg_guild_tech_lvup_to_s(?ERR_GUILD_TECH_LV_MAX) -> <<"ERR_GUILD_TECH_LV_MAX">>;
msg_guild_tech_lvup_to_s(?ERR_GUILD_TECH_VERIFY_CONDITION_FAIL) -> <<"ERR_GUILD_TECH_VERIFY_CONDITION_FAIL">>;
msg_guild_tech_lvup_to_s(_) -> invalid_id.

is_valid_msg_guild_tech_lvup(?ERR_GUILD_NO_THIS_TECH_BUILDINGID) -> true;
is_valid_msg_guild_tech_lvup(?ERR_GUILD_TECH_LV_MAX) -> true;
is_valid_msg_guild_tech_lvup(?ERR_GUILD_TECH_VERIFY_CONDITION_FAIL) -> true;
is_valid_msg_guild_tech_lvup(_) -> false.
enum_msg_guild_tech_lvup_all() -> [591 , 592, 593].
enum_msg_guild_tech_lvup_size() -> 3.
%% enum msg_guild_shop 
msg_guild_shop_to_s(?ERR_GUILD_VERIFY_CONDITION_ERROR) -> <<"ERR_GUILD_VERIFY_CONDITION_ERROR">>;
msg_guild_shop_to_s(?ERR_GUILD_NO_GUILD_SHOP_CFG) -> <<"ERR_GUILD_NO_GUILD_SHOP_CFG">>;
msg_guild_shop_to_s(_) -> invalid_id.

is_valid_msg_guild_shop(?ERR_GUILD_VERIFY_CONDITION_ERROR) -> true;
is_valid_msg_guild_shop(?ERR_GUILD_NO_GUILD_SHOP_CFG) -> true;
is_valid_msg_guild_shop(_) -> false.
enum_msg_guild_shop_all() -> [571 , 572].
enum_msg_guild_shop_size() -> 2.
%% enum msg_guild_apply 
msg_guild_apply_to_s(?ERR_GUILD_MAX_NUM) -> <<"ERR_GUILD_MAX_NUM">>;
msg_guild_apply_to_s(_) -> invalid_id.

is_valid_msg_guild_apply(?ERR_GUILD_MAX_NUM) -> true;
is_valid_msg_guild_apply(_) -> false.
enum_msg_guild_apply_all() -> [561 ].
enum_msg_guild_apply_size() -> 1.
%% enum msg_guild_building_addexp 
msg_guild_building_addexp_to_s(?ERR_GUILD_NO_MEMBER_CFG) -> <<"ERR_GUILD_NO_MEMBER_CFG">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_NO_THISBUILDINGID) -> <<"ERR_GUILD_NO_THISBUILDINGID">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_EXIT_MORE_THISBUILDINGS) -> <<"ERR_GUILD_EXIT_MORE_THISBUILDINGS">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_NO_BUILDING_LVUPCFG) -> <<"ERR_GUILD_NO_BUILDING_LVUPCFG">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_TYPE_IS_ERROR) -> <<"ERR_GUILD_TYPE_IS_ERROR">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_LV_LESS_THEN_BUILDINGS) -> <<"ERR_GUILD_LV_LESS_THEN_BUILDINGS">>;
msg_guild_building_addexp_to_s(?ERR_GUILD_LV_MAX) -> <<"ERR_GUILD_LV_MAX">>;
msg_guild_building_addexp_to_s(_) -> invalid_id.

is_valid_msg_guild_building_addexp(?ERR_GUILD_NO_MEMBER_CFG) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_NO_THISBUILDINGID) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_EXIT_MORE_THISBUILDINGS) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_NO_BUILDING_LVUPCFG) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_TYPE_IS_ERROR) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_LV_LESS_THEN_BUILDINGS) -> true;
is_valid_msg_guild_building_addexp(?ERR_GUILD_LV_MAX) -> true;
is_valid_msg_guild_building_addexp(_) -> false.
enum_msg_guild_building_addexp_all() -> [551 , 552, 553, 554, 555, 557, 558].
enum_msg_guild_building_addexp_size() -> 7.
%% enum msg_guild_appoint_or_remove_player 
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_NOT_ENOUGH_POSITION_NUM) -> <<"ERR_GUILD_NOT_ENOUGH_POSITION_NUM">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_PLAYER_NOT_IN_THIS_GULD) -> <<"ERR_GUILD_PLAYER_NOT_IN_THIS_GULD">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_THIS_POSITION_IS_NULL) -> <<"ERR_GUILD_THIS_POSITION_IS_NULL">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_MASTER_CONNOT_REMOVE) -> <<"ERR_GUILD_MASTER_CONNOT_REMOVE">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_NO_THIS_POSITION) -> <<"ERR_GUILD_NO_THIS_POSITION">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_OTHER_PLAYER_NOT_JOIN_GUILD) -> <<"ERR_GUILD_OTHER_PLAYER_NOT_JOIN_GUILD">>;
msg_guild_appoint_or_remove_player_to_s(?ERR_GUILD_MASTER_CONNOT_CHANGE_POSITION) -> <<"ERR_GUILD_MASTER_CONNOT_CHANGE_POSITION">>;
msg_guild_appoint_or_remove_player_to_s(_) -> invalid_id.

is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_NOT_ENOUGH_POSITION_NUM) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_PLAYER_NOT_IN_THIS_GULD) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_THIS_POSITION_IS_NULL) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_MASTER_CONNOT_REMOVE) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_NO_THIS_POSITION) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_OTHER_PLAYER_NOT_JOIN_GUILD) -> true;
is_valid_msg_guild_appoint_or_remove_player(?ERR_GUILD_MASTER_CONNOT_CHANGE_POSITION) -> true;
is_valid_msg_guild_appoint_or_remove_player(_) -> false.
enum_msg_guild_appoint_or_remove_player_all() -> [531 , 532, 533, 541, 542, 543, 544].
enum_msg_guild_appoint_or_remove_player_size() -> 7.
%% enum msg_guild_search 
msg_guild_search_to_s(?ERR_GUILD_FIND_GUILD_IS_NULL) -> <<"ERR_GUILD_FIND_GUILD_IS_NULL">>;
msg_guild_search_to_s(_) -> invalid_id.

is_valid_msg_guild_search(?ERR_GUILD_FIND_GUILD_IS_NULL) -> true;
is_valid_msg_guild_search(_) -> false.
enum_msg_guild_search_all() -> [581 ].
enum_msg_guild_search_size() -> 1.
%% enum msg_guild_create 
msg_guild_create_to_s(?ERR_GUILD_CREATE_LEVEL_LESS_THAN) -> <<"ERR_GUILD_CREATE_LEVEL_LESS_THAN">>;
msg_guild_create_to_s(?ERR_GUILD_CREATE_DIAMOND_LESS_THAN) -> <<"ERR_GUILD_CREATE_DIAMOND_LESS_THAN">>;
msg_guild_create_to_s(?ERR_GUILD_CREATE_ITEM_LESS_THAN) -> <<"ERR_GUILD_CREATE_ITEM_LESS_THAN">>;
msg_guild_create_to_s(?ERR_GUILD_COST_FAIL) -> <<"ERR_GUILD_COST_FAIL">>;
msg_guild_create_to_s(?ERR_GUILD_CREATE_NAME_REPEAT) -> <<"ERR_GUILD_CREATE_NAME_REPEAT">>;
msg_guild_create_to_s(?ERR_GUILD_CREATE_GOLD_LESS_THAN) -> <<"ERR_GUILD_CREATE_GOLD_LESS_THAN">>;
msg_guild_create_to_s(_) -> invalid_id.

is_valid_msg_guild_create(?ERR_GUILD_CREATE_LEVEL_LESS_THAN) -> true;
is_valid_msg_guild_create(?ERR_GUILD_CREATE_DIAMOND_LESS_THAN) -> true;
is_valid_msg_guild_create(?ERR_GUILD_CREATE_ITEM_LESS_THAN) -> true;
is_valid_msg_guild_create(?ERR_GUILD_COST_FAIL) -> true;
is_valid_msg_guild_create(?ERR_GUILD_CREATE_NAME_REPEAT) -> true;
is_valid_msg_guild_create(?ERR_GUILD_CREATE_GOLD_LESS_THAN) -> true;
is_valid_msg_guild_create(_) -> false.
enum_msg_guild_create_all() -> [521 , 522, 523, 524, 525, 526].
enum_msg_guild_create_size() -> 6.
%% enum guild_event_type 
guild_event_type_to_s(?GUILD_EVENT_TYPE_ADDEXP_ID) -> <<"GUILD_EVENT_TYPE_ADDEXP_ID">>;
guild_event_type_to_s(?GUILD_EVENT_TYPE_JOIN) -> <<"GUILD_EVENT_TYPE_JOIN">>;
guild_event_type_to_s(?GUILD_EVENT_TYPE_REMOVE) -> <<"GUILD_EVENT_TYPE_REMOVE">>;
guild_event_type_to_s(?GUILD_EVENT_TYPE_QUIT) -> <<"GUILD_EVENT_TYPE_QUIT">>;
guild_event_type_to_s(?GUILD_EVENT_TYPE_POSITION) -> <<"GUILD_EVENT_TYPE_POSITION">>;
guild_event_type_to_s(_) -> invalid_id.

is_valid_guild_event_type(?GUILD_EVENT_TYPE_ADDEXP_ID) -> true;
is_valid_guild_event_type(?GUILD_EVENT_TYPE_JOIN) -> true;
is_valid_guild_event_type(?GUILD_EVENT_TYPE_REMOVE) -> true;
is_valid_guild_event_type(?GUILD_EVENT_TYPE_QUIT) -> true;
is_valid_guild_event_type(?GUILD_EVENT_TYPE_POSITION) -> true;
is_valid_guild_event_type(_) -> false.
enum_guild_event_type_all() -> [1 , 2, 3, 4, 5].
enum_guild_event_type_size() -> 5.
%% enum guild_operation 
guild_operation_to_s(?GUILD_APPLY_AGREE_OR_REFUSED) -> <<"GUILD_APPLY_AGREE_OR_REFUSED">>;
guild_operation_to_s(?GUILD_REMOVE_MEMBER) -> <<"GUILD_REMOVE_MEMBER">>;
guild_operation_to_s(?GUILD_REMOVE_VICE_MATER) -> <<"GUILD_REMOVE_VICE_MATER">>;
guild_operation_to_s(?GUILD_APPOINT_OR_REMOVE_POSITION) -> <<"GUILD_APPOINT_OR_REMOVE_POSITION">>;
guild_operation_to_s(?GUILD_MASTER_TRANSFER) -> <<"GUILD_MASTER_TRANSFER">>;
guild_operation_to_s(?GUILD_QUIT) -> <<"GUILD_QUIT">>;
guild_operation_to_s(?GUILD_VIEW_APPLY_LIST) -> <<"GUILD_VIEW_APPLY_LIST">>;
guild_operation_to_s(?GUILD_UPDATE_NOTICE) -> <<"GUILD_UPDATE_NOTICE">>;
guild_operation_to_s(?GUILD_BOSS_DONATE) -> <<"GUILD_BOSS_DONATE">>;
guild_operation_to_s(?GUILD_BOSS_PHASE) -> <<"GUILD_BOSS_PHASE">>;
guild_operation_to_s(?GUILD_BOSS_CALL) -> <<"GUILD_BOSS_CALL">>;
guild_operation_to_s(?GUILD_BOSS_DAMAGE) -> <<"GUILD_BOSS_DAMAGE">>;
guild_operation_to_s(?GUILD_BOSS_REVIVE) -> <<"GUILD_BOSS_REVIVE">>;
guild_operation_to_s(_) -> invalid_id.

is_valid_guild_operation(?GUILD_APPLY_AGREE_OR_REFUSED) -> true;
is_valid_guild_operation(?GUILD_REMOVE_MEMBER) -> true;
is_valid_guild_operation(?GUILD_REMOVE_VICE_MATER) -> true;
is_valid_guild_operation(?GUILD_APPOINT_OR_REMOVE_POSITION) -> true;
is_valid_guild_operation(?GUILD_MASTER_TRANSFER) -> true;
is_valid_guild_operation(?GUILD_QUIT) -> true;
is_valid_guild_operation(?GUILD_VIEW_APPLY_LIST) -> true;
is_valid_guild_operation(?GUILD_UPDATE_NOTICE) -> true;
is_valid_guild_operation(?GUILD_BOSS_DONATE) -> true;
is_valid_guild_operation(?GUILD_BOSS_PHASE) -> true;
is_valid_guild_operation(?GUILD_BOSS_CALL) -> true;
is_valid_guild_operation(?GUILD_BOSS_DAMAGE) -> true;
is_valid_guild_operation(?GUILD_BOSS_REVIVE) -> true;
is_valid_guild_operation(_) -> false.
enum_guild_operation_all() -> [1 , 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13].
enum_guild_operation_size() -> 13.
%% enum guild_position 
guild_position_to_s(?GUILD_MASTER_POSITIONID) -> <<"GUILD_MASTER_POSITIONID">>;
guild_position_to_s(?GUILD_VICE_MASTER_POSTION) -> <<"GUILD_VICE_MASTER_POSTION">>;
guild_position_to_s(?GUILD_MEMBER_POSTION) -> <<"GUILD_MEMBER_POSTION">>;
guild_position_to_s(_) -> invalid_id.

is_valid_guild_position(?GUILD_MASTER_POSITIONID) -> true;
is_valid_guild_position(?GUILD_VICE_MASTER_POSTION) -> true;
is_valid_guild_position(?GUILD_MEMBER_POSTION) -> true;
is_valid_guild_position(_) -> false.
enum_guild_position_all() -> [1 , 2, 3].
enum_guild_position_size() -> 3.
