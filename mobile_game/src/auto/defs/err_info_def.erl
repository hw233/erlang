%% Auto generated by defs from err_info.def
%% Don't edit it.

-module(err_info_def).
-compile([export_all]).

-include("err_info_def.hrl").

err_atom_all() -> [ none_cfg  , level_limit  , err_load  , cost_not_enough  , task_goal_not_complete  , not_stand_npc_side  , not_in_ins  , cd_limit ].
%% enum gm_return_code 
gm_return_code_to_s(?GM_SUCCESS) -> <<"GM_SUCCESS">>;
gm_return_code_to_s(?GM_NOT_FIND_TYPE) -> <<"GM_NOT_FIND_TYPE">>;
gm_return_code_to_s(_) -> invalid_id.

is_valid_gm_return_code(?GM_SUCCESS) -> true;
is_valid_gm_return_code(?GM_NOT_FIND_TYPE) -> true;
is_valid_gm_return_code(_) -> false.
enum_gm_return_code_all() -> [0 , 127].
enum_gm_return_code_size() -> 2.
%% enum err_mail 
err_mail_to_s(?GET_PRIZE_OK) -> <<"GET_PRIZE_OK">>;
err_mail_to_s(?GET_PRIZE_1) -> <<"GET_PRIZE_1">>;
err_mail_to_s(?GET_PRIZE_2) -> <<"GET_PRIZE_2">>;
err_mail_to_s(?GET_PRIZE_3) -> <<"GET_PRIZE_3">>;
err_mail_to_s(?GET_PRIZE_255) -> <<"GET_PRIZE_255">>;
err_mail_to_s(_) -> invalid_id.

is_valid_err_mail(?GET_PRIZE_OK) -> true;
is_valid_err_mail(?GET_PRIZE_1) -> true;
is_valid_err_mail(?GET_PRIZE_2) -> true;
is_valid_err_mail(?GET_PRIZE_3) -> true;
is_valid_err_mail(?GET_PRIZE_255) -> true;
is_valid_err_mail(_) -> false.
enum_err_mail_all() -> [0 , 1, 2, 3, 255].
enum_err_mail_size() -> 5.
%% enum err_code_daily 
err_code_daily_to_s(?ERR_DAILY_NO_THIS_TYPE) -> <<"ERR_DAILY_NO_THIS_TYPE">>;
err_code_daily_to_s(?ERR_DAILY_NO_THIS_SCENE) -> <<"ERR_DAILY_NO_THIS_SCENE">>;
err_code_daily_to_s(?ERR_DAILY_IN_FIGHT) -> <<"ERR_DAILY_IN_FIGHT">>;
err_code_daily_to_s(_) -> invalid_id.

is_valid_err_code_daily(?ERR_DAILY_NO_THIS_TYPE) -> true;
is_valid_err_code_daily(?ERR_DAILY_NO_THIS_SCENE) -> true;
is_valid_err_code_daily(?ERR_DAILY_IN_FIGHT) -> true;
is_valid_err_code_daily(_) -> false.
enum_err_code_daily_all() -> [731 , 732, 733].
enum_err_code_daily_size() -> 3.
%% enum err_code_com 
err_code_com_to_s(?ERR_NOT_OPEN_FUN) -> <<"ERR_NOT_OPEN_FUN">>;
err_code_com_to_s(?ERR_COST_MONEY_FAIL) -> <<"ERR_COST_MONEY_FAIL">>;
err_code_com_to_s(?ERR_COST_DIAMOND_FAIL) -> <<"ERR_COST_DIAMOND_FAIL">>;
err_code_com_to_s(?ERR_LIMIT_LEVEL) -> <<"ERR_LIMIT_LEVEL">>;
err_code_com_to_s(?ERR_MAX_COUNT) -> <<"ERR_MAX_COUNT">>;
err_code_com_to_s(?ERR_MAX_LEVEL) -> <<"ERR_MAX_LEVEL">>;
err_code_com_to_s(?ERR_NO_CFG) -> <<"ERR_NO_CFG">>;
err_code_com_to_s(?ERR_PLAYER_OFFLINE) -> <<"ERR_PLAYER_OFFLINE">>;
err_code_com_to_s(?ERR_MAIN_INS_START_NOT_ENOUGH) -> <<"ERR_MAIN_INS_START_NOT_ENOUGH">>;
err_code_com_to_s(?ERR_MAIN_SHOP_NOT_GOODS) -> <<"ERR_MAIN_SHOP_NOT_GOODS">>;
err_code_com_to_s(?ERR_ACCOUNT_PASSWORD) -> <<"ERR_ACCOUNT_PASSWORD">>;
err_code_com_to_s(?ERR_ACCOUNT_FREEZE) -> <<"ERR_ACCOUNT_FREEZE">>;
err_code_com_to_s(?ERR_PLAYER_FREEZE) -> <<"ERR_PLAYER_FREEZE">>;
err_code_com_to_s(?ERR_CLEAN_MAIN_INS_PASS) -> <<"ERR_CLEAN_MAIN_INS_PASS">>;
err_code_com_to_s(?ERR_CLEAN_MAIN_INS_SP_ENOUGH) -> <<"ERR_CLEAN_MAIN_INS_SP_ENOUGH">>;
err_code_com_to_s(?ERR_ACCOUNT_ONLY_JOIN_ONE) -> <<"ERR_ACCOUNT_ONLY_JOIN_ONE">>;
err_code_com_to_s(?ERR_CLEAN_MAIN_INS_SEVEN_STAR_PASS) -> <<"ERR_CLEAN_MAIN_INS_SEVEN_STAR_PASS">>;
err_code_com_to_s(?ERR_JINXING_FAIL) -> <<"ERR_JINXING_FAIL">>;
err_code_com_to_s(?ERR_YINXING_FAIL) -> <<"ERR_YINXING_FAIL">>;
err_code_com_to_s(?ERR_MAIN_INS_SWEEP_NOT_ENOUGH) -> <<"ERR_MAIN_INS_SWEEP_NOT_ENOUGH">>;
err_code_com_to_s(?ERR_BUY_CHALLENGE_NOT_ENOUGH) -> <<"ERR_BUY_CHALLENGE_NOT_ENOUGH">>;
err_code_com_to_s(?ERR_BUY_CHALLENGE_NOT_MAIN_INS) -> <<"ERR_BUY_CHALLENGE_NOT_MAIN_INS">>;
err_code_com_to_s(_) -> invalid_id.

is_valid_err_code_com(?ERR_NOT_OPEN_FUN) -> true;
is_valid_err_code_com(?ERR_COST_MONEY_FAIL) -> true;
is_valid_err_code_com(?ERR_COST_DIAMOND_FAIL) -> true;
is_valid_err_code_com(?ERR_LIMIT_LEVEL) -> true;
is_valid_err_code_com(?ERR_MAX_COUNT) -> true;
is_valid_err_code_com(?ERR_MAX_LEVEL) -> true;
is_valid_err_code_com(?ERR_NO_CFG) -> true;
is_valid_err_code_com(?ERR_PLAYER_OFFLINE) -> true;
is_valid_err_code_com(?ERR_MAIN_INS_START_NOT_ENOUGH) -> true;
is_valid_err_code_com(?ERR_MAIN_SHOP_NOT_GOODS) -> true;
is_valid_err_code_com(?ERR_ACCOUNT_PASSWORD) -> true;
is_valid_err_code_com(?ERR_ACCOUNT_FREEZE) -> true;
is_valid_err_code_com(?ERR_PLAYER_FREEZE) -> true;
is_valid_err_code_com(?ERR_CLEAN_MAIN_INS_PASS) -> true;
is_valid_err_code_com(?ERR_CLEAN_MAIN_INS_SP_ENOUGH) -> true;
is_valid_err_code_com(?ERR_ACCOUNT_ONLY_JOIN_ONE) -> true;
is_valid_err_code_com(?ERR_CLEAN_MAIN_INS_SEVEN_STAR_PASS) -> true;
is_valid_err_code_com(?ERR_JINXING_FAIL) -> true;
is_valid_err_code_com(?ERR_YINXING_FAIL) -> true;
is_valid_err_code_com(?ERR_MAIN_INS_SWEEP_NOT_ENOUGH) -> true;
is_valid_err_code_com(?ERR_BUY_CHALLENGE_NOT_ENOUGH) -> true;
is_valid_err_code_com(?ERR_BUY_CHALLENGE_NOT_MAIN_INS) -> true;
is_valid_err_code_com(_) -> false.
enum_err_code_com_all() -> [201 , 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222].
enum_err_code_com_size() -> 22.
%% enum err_code 
err_code_to_s(?ERR_OK) -> <<"ERR_OK">>;
err_code_to_s(?ERR_ROLE_NOT_EXIST) -> <<"ERR_ROLE_NOT_EXIST">>;
err_code_to_s(?ERR_ROLE_NAME_NOT_ILLEGAL) -> <<"ERR_ROLE_NAME_NOT_ILLEGAL">>;
err_code_to_s(?ERR_ROLE_NAME_ALREAY_EXIST) -> <<"ERR_ROLE_NAME_ALREAY_EXIST">>;
err_code_to_s(?ERR_NOT_EXIST_CFG) -> <<"ERR_NOT_EXIST_CFG">>;
err_code_to_s(?ERR_SYSTEM) -> <<"ERR_SYSTEM">>;
err_code_to_s(?ERR_SET_ATTR) -> <<"ERR_SET_ATTR">>;
err_code_to_s(?ERR_AUTH_MESSAGE) -> <<"ERR_AUTH_MESSAGE">>;
err_code_to_s(?ERR_ITEM_NOT_EXIST) -> <<"ERR_ITEM_NOT_EXIST">>;
err_code_to_s(?ERR_ENTER_SCENE_REQUEST_DISAPPROVED) -> <<"ERR_ENTER_SCENE_REQUEST_DISAPPROVED">>;
err_code_to_s(?ERR_COST_NOT_ENOUGH) -> <<"ERR_COST_NOT_ENOUGH">>;
err_code_to_s(?ERR_POINT_NOT_WALKABLE) -> <<"ERR_POINT_NOT_WALKABLE">>;
err_code_to_s(?ERR_NOT_IN_INS) -> <<"ERR_NOT_IN_INS">>;
err_code_to_s(?ERR_NOT_EXIST_SKILL) -> <<"ERR_NOT_EXIST_SKILL">>;
err_code_to_s(?ERR_CD_LIMIT) -> <<"ERR_CD_LIMIT">>;
err_code_to_s(?ERR_TYPE_ILL) -> <<"ERR_TYPE_ILL">>;
err_code_to_s(?ERR_CROWN_GEM_ALREADY_DRESS) -> <<"ERR_CROWN_GEM_ALREADY_DRESS">>;
err_code_to_s(?ERR_CROWN_GEM_NOT_DRESSED) -> <<"ERR_CROWN_GEM_NOT_DRESSED">>;
err_code_to_s(?ERR_CROWN_SLOT_FULL) -> <<"ERR_CROWN_SLOT_FULL">>;
err_code_to_s(?ERR_CROWN_GEM_FULL_LEVEL) -> <<"ERR_CROWN_GEM_FULL_LEVEL">>;
err_code_to_s(?ERR_CROWN_ANGER_NOT_FULL) -> <<"ERR_CROWN_ANGER_NOT_FULL">>;
err_code_to_s(?ERR_FRIEND_NO_FRIEND) -> <<"ERR_FRIEND_NO_FRIEND">>;
err_code_to_s(?ERR_TEAM_INS_ROOM_NOT_EXIST) -> <<"ERR_TEAM_INS_ROOM_NOT_EXIST">>;
err_code_to_s(?ERR_NOT_TEAM_MAIN_INS) -> <<"ERR_NOT_TEAM_MAIN_INS">>;
err_code_to_s(?ERR_SP_NOT_ENOUGHT) -> <<"ERR_SP_NOT_ENOUGHT">>;
err_code_to_s(?ERR_CHAPTER_START_PRIZE_1) -> <<"ERR_CHAPTER_START_PRIZE_1">>;
err_code_to_s(?ERR_CHAPTER_START_PRIZE_2) -> <<"ERR_CHAPTER_START_PRIZE_2">>;
err_code_to_s(?ERR_SKILL_LW_IS_EXIST) -> <<"ERR_SKILL_LW_IS_EXIST">>;
err_code_to_s(?ERR_SKILL_NO_ID) -> <<"ERR_SKILL_NO_ID">>;
err_code_to_s(?ERR_SKILL_LW_LEVEL_NOT_ENOUGH) -> <<"ERR_SKILL_LW_LEVEL_NOT_ENOUGH">>;
err_code_to_s(?ERR_SKILL_LW_MAX) -> <<"ERR_SKILL_LW_MAX">>;
err_code_to_s(?ERR_SKILL_LW_LEVEL_ERROR) -> <<"ERR_SKILL_LW_LEVEL_ERROR">>;
err_code_to_s(?ERR_BAG_FULL) -> <<"ERR_BAG_FULL">>;
err_code_to_s(?ERR_TITLE_NOT_EXIST) -> <<"ERR_TITLE_NOT_EXIST">>;
err_code_to_s(?ERR_TITLE_IS_CUR_TITLE) -> <<"ERR_TITLE_IS_CUR_TITLE">>;
err_code_to_s(?ERR_PET_SKILL_ALREADY_STUDY) -> <<"ERR_PET_SKILL_ALREADY_STUDY">>;
err_code_to_s(?ERR_PET_SKILL_NOT_STUDY) -> <<"ERR_PET_SKILL_NOT_STUDY">>;
err_code_to_s(?ERR_PET_FIGHT_STATUS) -> <<"ERR_PET_FIGHT_STATUS">>;
err_code_to_s(?ERR_PET_NOT_EXIST) -> <<"ERR_PET_NOT_EXIST">>;
err_code_to_s(?ERR_PET_CANT_ADVANCE) -> <<"ERR_PET_CANT_ADVANCE">>;
err_code_to_s(?ERR_PET_SKILL_POS_NOT_ACTIVE) -> <<"ERR_PET_SKILL_POS_NOT_ACTIVE">>;
err_code_to_s(?ERR_PET_SKILL_POS_ALREADY_LOAD) -> <<"ERR_PET_SKILL_POS_ALREADY_LOAD">>;
err_code_to_s(?ERR_PET_TREASURE) -> <<"ERR_PET_TREASURE">>;
err_code_to_s(?ERR_PET_NOT_TREASURE) -> <<"ERR_PET_NOT_TREASURE">>;
err_code_to_s(?ERR_PET_TREASURE_NOT_EXIST) -> <<"ERR_PET_TREASURE_NOT_EXIST">>;
err_code_to_s(?ERR_PET_POS_ISOPEN) -> <<"ERR_PET_POS_ISOPEN">>;
err_code_to_s(?ERR_PET_POS_CANOPEN) -> <<"ERR_PET_POS_CANOPEN">>;
err_code_to_s(?ERR_PET_POS_REPEAT) -> <<"ERR_PET_POS_REPEAT">>;
err_code_to_s(?ERR_PET_POS_REPEAT_OF_ATTR) -> <<"ERR_PET_POS_REPEAT_OF_ATTR">>;
err_code_to_s(?ERR_PET_NOT_PASSIVITYSKILL_ID) -> <<"ERR_PET_NOT_PASSIVITYSKILL_ID">>;
err_code_to_s(?ERR_PET_MAX_LEVEL) -> <<"ERR_PET_MAX_LEVEL">>;
err_code_to_s(?ERR_PET_NOT_SHANGZHEN) -> <<"ERR_PET_NOT_SHANGZHEN">>;
err_code_to_s(?ERR_PET_NOT_XIAZHEN) -> <<"ERR_PET_NOT_XIAZHEN">>;
err_code_to_s(?ERR_PET_NOT_FENGYIN) -> <<"ERR_PET_NOT_FENGYIN">>;
err_code_to_s(?ERR_RIDE_NO_ENOUGH) -> <<"ERR_RIDE_NO_ENOUGH">>;
err_code_to_s(?ERR_RIDE_NO_THIS_RIDE) -> <<"ERR_RIDE_NO_THIS_RIDE">>;
err_code_to_s(?ERR_RIDE_NO_RIDING) -> <<"ERR_RIDE_NO_RIDING">>;
err_code_to_s(?ERR_RIDE_LEVELMAX) -> <<"ERR_RIDE_LEVELMAX">>;
err_code_to_s(?ERR_RIDE_EXP_NO_ENOUGH) -> <<"ERR_RIDE_EXP_NO_ENOUGH">>;
err_code_to_s(?ERR_RIDE_CHANGE_NO_CD) -> <<"ERR_RIDE_CHANGE_NO_CD">>;
err_code_to_s(?ERR_RIDE_MAX_HAPPY) -> <<"ERR_RIDE_MAX_HAPPY">>;
err_code_to_s(?ERR_RIDE_LEVEL_ENOUGH) -> <<"ERR_RIDE_LEVEL_ENOUGH">>;
err_code_to_s(?ERR_RIDE_HAPPY_ENOUGH) -> <<"ERR_RIDE_HAPPY_ENOUGH">>;
err_code_to_s(?ERR_RIDE_ADVANCE_LEVEL) -> <<"ERR_RIDE_ADVANCE_LEVEL">>;
err_code_to_s(?ERR_RIDE_CHANGE_NO_NUM) -> <<"ERR_RIDE_CHANGE_NO_NUM">>;
err_code_to_s(?ERR_RIDE_EVOLVE_MAX) -> <<"ERR_RIDE_EVOLVE_MAX">>;
err_code_to_s(?ERR_GUILD_NOT_JOIN) -> <<"ERR_GUILD_NOT_JOIN">>;
err_code_to_s(?ERR_GUILD_NOT_PERMISSION) -> <<"ERR_GUILD_NOT_PERMISSION">>;
err_code_to_s(?ERR_GUILD_NO_GUILD) -> <<"ERR_GUILD_NO_GUILD">>;
err_code_to_s(?ERR_GUILD_HAS_GUILD) -> <<"ERR_GUILD_HAS_GUILD">>;
err_code_to_s(?ERR_GUILD_INVALID_GUILDNAME) -> <<"ERR_GUILD_INVALID_GUILDNAME">>;
err_code_to_s(?ERR_GUILD_INVALID_NOTICE) -> <<"ERR_GUILD_INVALID_NOTICE">>;
err_code_to_s(?ERR_GUILD_NOT_IN_SAMEGUILD) -> <<"ERR_GUILD_NOT_IN_SAMEGUILD">>;
err_code_to_s(?ERR_GUILD_DAILY_NUMBER_FINISHED) -> <<"ERR_GUILD_DAILY_NUMBER_FINISHED">>;
err_code_to_s(?ERR_GUILD_MASTER_CONNOT_QUIT) -> <<"ERR_GUILD_MASTER_CONNOT_QUIT">>;
err_code_to_s(?ERR_GUILD_HASALREADY_APPLY) -> <<"ERR_GUILD_HASALREADY_APPLY">>;
err_code_to_s(?ERR_GUILD_PROTO_ARG_ERROR) -> <<"ERR_GUILD_PROTO_ARG_ERROR">>;
err_code_to_s(?ERR_GUILD_UNKNOWN) -> <<"ERR_GUILD_UNKNOWN">>;
err_code_to_s(?ERR_GUILD_MINING_INFO) -> <<"ERR_GUILD_MINING_INFO">>;
err_code_to_s(?ERR_GUILD_SAINT_NO_OPEN) -> <<"ERR_GUILD_SAINT_NO_OPEN">>;
err_code_to_s(?ERR_GUILD_SAINT_GETTED) -> <<"ERR_GUILD_SAINT_GETTED">>;
err_code_to_s(?ERR_SELLER_NOT_ACTIVATE) -> <<"ERR_SELLER_NOT_ACTIVATE">>;
err_code_to_s(?ERR_SELLER_NO_THIS_CONFIG) -> <<"ERR_SELLER_NO_THIS_CONFIG">>;
err_code_to_s(?ERR_SELLER_NO_THIS_RANDOM_ID) -> <<"ERR_SELLER_NO_THIS_RANDOM_ID">>;
err_code_to_s(?ERR_SELLER_DIAMOND_NOT_ENOUGH) -> <<"ERR_SELLER_DIAMOND_NOT_ENOUGH">>;
err_code_to_s(?ERR_SELLER_COST_NOT_ENOUGH) -> <<"ERR_SELLER_COST_NOT_ENOUGH">>;
err_code_to_s(?ERR_SELLER_ARG_ERROR) -> <<"ERR_SELLER_ARG_ERROR">>;
err_code_to_s(?ERR_SELLER_BUY_COUNT_NOT_ENOUGH) -> <<"ERR_SELLER_BUY_COUNT_NOT_ENOUGH">>;
err_code_to_s(?ERR_ACC_THIS_ACCID_NOT_ACCEPT) -> <<"ERR_ACC_THIS_ACCID_NOT_ACCEPT">>;
err_code_to_s(?ERR_ACC_CHECH_ERR) -> <<"ERR_ACC_CHECH_ERR">>;
err_code_to_s(?ERR_CAMP_HAVE_OPEN) -> <<"ERR_CAMP_HAVE_OPEN">>;
err_code_to_s(?ERR_CAMP_NOT_OPEN) -> <<"ERR_CAMP_NOT_OPEN">>;
err_code_to_s(?ERR_CAMP_NOT_JOIN_CAMP) -> <<"ERR_CAMP_NOT_JOIN_CAMP">>;
err_code_to_s(?ERR_CAMP_NOT_FIGHT) -> <<"ERR_CAMP_NOT_FIGHT">>;
err_code_to_s(?ERR_CAMP_HAVE_CAMP) -> <<"ERR_CAMP_HAVE_CAMP">>;
err_code_to_s(?ERR_CAMP_NOT_PERSION) -> <<"ERR_CAMP_NOT_PERSION">>;
err_code_to_s(?ERR_CAMP_SELECT_CAMP) -> <<"ERR_CAMP_SELECT_CAMP">>;
err_code_to_s(?ERR_CAMP_NO_ENOUGH_COUNT) -> <<"ERR_CAMP_NO_ENOUGH_COUNT">>;
err_code_to_s(?ERR_CAMP_CHECH_INSTANCE_ERROR) -> <<"ERR_CAMP_CHECH_INSTANCE_ERROR">>;
err_code_to_s(?ERR_CAMP_EXIT_IN_THIS_SCENE) -> <<"ERR_CAMP_EXIT_IN_THIS_SCENE">>;
err_code_to_s(?ERR_CAMP_IS_FIGHT) -> <<"ERR_CAMP_IS_FIGHT">>;
err_code_to_s(?ERR_CAMP_IS_IN_BOSS_ROOM) -> <<"ERR_CAMP_IS_IN_BOSS_ROOM">>;
err_code_to_s(?ERR_CAMP_NOT_INVADE) -> <<"ERR_CAMP_NOT_INVADE">>;
err_code_to_s(?ERR_CAMP_NO_FIGHT) -> <<"ERR_CAMP_NO_FIGHT">>;
err_code_to_s(?ERR_CAMP_GUARD_MY_INS) -> <<"ERR_CAMP_GUARD_MY_INS">>;
err_code_to_s(?ERR_ABYSS_NOT_OPEN) -> <<"ERR_ABYSS_NOT_OPEN">>;
err_code_to_s(?ERR_ABYSS_MAX_ENTER_LAYER) -> <<"ERR_ABYSS_MAX_ENTER_LAYER">>;
err_code_to_s(?ERR_ABYSS_AUTO_MAX_LAYER) -> <<"ERR_ABYSS_AUTO_MAX_LAYER">>;
err_code_to_s(?ERR_ABYSS_NO_THIS_LAYER) -> <<"ERR_ABYSS_NO_THIS_LAYER">>;
err_code_to_s(?ERR_ABYSS_THIS_HEIGHT_LAYER) -> <<"ERR_ABYSS_THIS_HEIGHT_LAYER">>;
err_code_to_s(?ERR_ABYSS_MAX_COUNT) -> <<"ERR_ABYSS_MAX_COUNT">>;
err_code_to_s(?ERR_ABYSS_COST_FAIL) -> <<"ERR_ABYSS_COST_FAIL">>;
err_code_to_s(?ERR_ABYSS_ENTER_SCENE_FIAL) -> <<"ERR_ABYSS_ENTER_SCENE_FIAL">>;
err_code_to_s(?ERR_ABYSS_LIMIT_LEVEL) -> <<"ERR_ABYSS_LIMIT_LEVEL">>;
err_code_to_s(?ERR_ABYSS_EASY_LAYER_NOT_ENOUGH) -> <<"ERR_ABYSS_EASY_LAYER_NOT_ENOUGH">>;
err_code_to_s(?ERR_LOOKUP_LVL_PRIZE_CFG) -> <<"ERR_LOOKUP_LVL_PRIZE_CFG">>;
err_code_to_s(?ERR_SINK_STATE) -> <<"ERR_SINK_STATE">>;
err_code_to_s(?ERR_DIAMOND_NOT_ENOUGH) -> <<"ERR_DIAMOND_NOT_ENOUGH">>;
err_code_to_s(?ERR_UNKNOW) -> <<"ERR_UNKNOW">>;
err_code_to_s(?ERR_ERROR_TIME) -> <<"ERR_ERROR_TIME">>;
err_code_to_s(?ERR_ERROR_ORDER_ID) -> <<"ERR_ERROR_ORDER_ID">>;
err_code_to_s(?ERR_ERROR_GIVE) -> <<"ERR_ERROR_GIVE">>;
err_code_to_s(?ERR_ERROR_DAILY_TASK_PRIZE) -> <<"ERR_ERROR_DAILY_TASK_PRIZE">>;
err_code_to_s(?ERR_PAY_NOT_ENOUGH) -> <<"ERR_PAY_NOT_ENOUGH">>;
err_code_to_s(?ERR_QQ_PAY_HAS_ORDER) -> <<"ERR_QQ_PAY_HAS_ORDER">>;
err_code_to_s(?ERR_QQ_PAY_TOKEN) -> <<"ERR_QQ_PAY_TOKEN">>;
err_code_to_s(?ERR_QQ_PAY_FAILURE) -> <<"ERR_QQ_PAY_FAILURE">>;
err_code_to_s(?ERR_PAY_LIMIT) -> <<"ERR_PAY_LIMIT">>;
err_code_to_s(?ERR_VIP_BUYED) -> <<"ERR_VIP_BUYED">>;
err_code_to_s(?ERR_MAIN_STAR_SHOP_NOT_OPEN) -> <<"ERR_MAIN_STAR_SHOP_NOT_OPEN">>;
err_code_to_s(?ERR_TEAM_NOT_LEADER) -> <<"ERR_TEAM_NOT_LEADER">>;
err_code_to_s(?ERR_TEAM_IS_FULL) -> <<"ERR_TEAM_IS_FULL">>;
err_code_to_s(?ERR_TEAM_ALREADY_EXIST) -> <<"ERR_TEAM_ALREADY_EXIST">>;
err_code_to_s(?ERR_TEAM_TYPE_ERROR) -> <<"ERR_TEAM_TYPE_ERROR">>;
err_code_to_s(?ERR_TEAM_FAST_JOIN) -> <<"ERR_TEAM_FAST_JOIN">>;
err_code_to_s(?ERR_TEAM_NOT_EXIST_PLAYER) -> <<"ERR_TEAM_NOT_EXIST_PLAYER">>;
err_code_to_s(?ERR_TEAM_NOT_JOIN_SELF) -> <<"ERR_TEAM_NOT_JOIN_SELF">>;
err_code_to_s(?ERR_GWGC_NOT_CAN_FIGHT) -> <<"ERR_GWGC_NOT_CAN_FIGHT">>;
err_code_to_s(?ERR_GWGC_NOT_LOOK) -> <<"ERR_GWGC_NOT_LOOK">>;
err_code_to_s(?ERR_GWGC_NOT_STAR) -> <<"ERR_GWGC_NOT_STAR">>;
err_code_to_s(?ERR_GWGC_PLAYER_NORMAL_SCENE) -> <<"ERR_GWGC_PLAYER_NORMAL_SCENE">>;
err_code_to_s(?ERR_NOT_FOUND_THIS_ITEM) -> <<"ERR_NOT_FOUND_THIS_ITEM">>;
err_code_to_s(?ERR_GIVE_GOODS_ERROR) -> <<"ERR_GIVE_GOODS_ERROR">>;
err_code_to_s(?ERR_NOT_FOUND_CFG_GOODS_LIST) -> <<"ERR_NOT_FOUND_CFG_GOODS_LIST">>;
err_code_to_s(?ERR_DEL_GOODS_ERROR) -> <<"ERR_DEL_GOODS_ERROR">>;
err_code_to_s(_) -> invalid_id.

is_valid_err_code(?ERR_OK) -> true;
is_valid_err_code(?ERR_ROLE_NOT_EXIST) -> true;
is_valid_err_code(?ERR_ROLE_NAME_NOT_ILLEGAL) -> true;
is_valid_err_code(?ERR_ROLE_NAME_ALREAY_EXIST) -> true;
is_valid_err_code(?ERR_NOT_EXIST_CFG) -> true;
is_valid_err_code(?ERR_SYSTEM) -> true;
is_valid_err_code(?ERR_SET_ATTR) -> true;
is_valid_err_code(?ERR_AUTH_MESSAGE) -> true;
is_valid_err_code(?ERR_ITEM_NOT_EXIST) -> true;
is_valid_err_code(?ERR_ENTER_SCENE_REQUEST_DISAPPROVED) -> true;
is_valid_err_code(?ERR_COST_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_POINT_NOT_WALKABLE) -> true;
is_valid_err_code(?ERR_NOT_IN_INS) -> true;
is_valid_err_code(?ERR_NOT_EXIST_SKILL) -> true;
is_valid_err_code(?ERR_CD_LIMIT) -> true;
is_valid_err_code(?ERR_TYPE_ILL) -> true;
is_valid_err_code(?ERR_CROWN_GEM_ALREADY_DRESS) -> true;
is_valid_err_code(?ERR_CROWN_GEM_NOT_DRESSED) -> true;
is_valid_err_code(?ERR_CROWN_SLOT_FULL) -> true;
is_valid_err_code(?ERR_CROWN_GEM_FULL_LEVEL) -> true;
is_valid_err_code(?ERR_CROWN_ANGER_NOT_FULL) -> true;
is_valid_err_code(?ERR_FRIEND_NO_FRIEND) -> true;
is_valid_err_code(?ERR_TEAM_INS_ROOM_NOT_EXIST) -> true;
is_valid_err_code(?ERR_NOT_TEAM_MAIN_INS) -> true;
is_valid_err_code(?ERR_SP_NOT_ENOUGHT) -> true;
is_valid_err_code(?ERR_CHAPTER_START_PRIZE_1) -> true;
is_valid_err_code(?ERR_CHAPTER_START_PRIZE_2) -> true;
is_valid_err_code(?ERR_SKILL_LW_IS_EXIST) -> true;
is_valid_err_code(?ERR_SKILL_NO_ID) -> true;
is_valid_err_code(?ERR_SKILL_LW_LEVEL_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_SKILL_LW_MAX) -> true;
is_valid_err_code(?ERR_SKILL_LW_LEVEL_ERROR) -> true;
is_valid_err_code(?ERR_BAG_FULL) -> true;
is_valid_err_code(?ERR_TITLE_NOT_EXIST) -> true;
is_valid_err_code(?ERR_TITLE_IS_CUR_TITLE) -> true;
is_valid_err_code(?ERR_PET_SKILL_ALREADY_STUDY) -> true;
is_valid_err_code(?ERR_PET_SKILL_NOT_STUDY) -> true;
is_valid_err_code(?ERR_PET_FIGHT_STATUS) -> true;
is_valid_err_code(?ERR_PET_NOT_EXIST) -> true;
is_valid_err_code(?ERR_PET_CANT_ADVANCE) -> true;
is_valid_err_code(?ERR_PET_SKILL_POS_NOT_ACTIVE) -> true;
is_valid_err_code(?ERR_PET_SKILL_POS_ALREADY_LOAD) -> true;
is_valid_err_code(?ERR_PET_TREASURE) -> true;
is_valid_err_code(?ERR_PET_NOT_TREASURE) -> true;
is_valid_err_code(?ERR_PET_TREASURE_NOT_EXIST) -> true;
is_valid_err_code(?ERR_PET_POS_ISOPEN) -> true;
is_valid_err_code(?ERR_PET_POS_CANOPEN) -> true;
is_valid_err_code(?ERR_PET_POS_REPEAT) -> true;
is_valid_err_code(?ERR_PET_POS_REPEAT_OF_ATTR) -> true;
is_valid_err_code(?ERR_PET_NOT_PASSIVITYSKILL_ID) -> true;
is_valid_err_code(?ERR_PET_MAX_LEVEL) -> true;
is_valid_err_code(?ERR_PET_NOT_SHANGZHEN) -> true;
is_valid_err_code(?ERR_PET_NOT_XIAZHEN) -> true;
is_valid_err_code(?ERR_PET_NOT_FENGYIN) -> true;
is_valid_err_code(?ERR_RIDE_NO_ENOUGH) -> true;
is_valid_err_code(?ERR_RIDE_NO_THIS_RIDE) -> true;
is_valid_err_code(?ERR_RIDE_NO_RIDING) -> true;
is_valid_err_code(?ERR_RIDE_LEVELMAX) -> true;
is_valid_err_code(?ERR_RIDE_EXP_NO_ENOUGH) -> true;
is_valid_err_code(?ERR_RIDE_CHANGE_NO_CD) -> true;
is_valid_err_code(?ERR_RIDE_MAX_HAPPY) -> true;
is_valid_err_code(?ERR_RIDE_LEVEL_ENOUGH) -> true;
is_valid_err_code(?ERR_RIDE_HAPPY_ENOUGH) -> true;
is_valid_err_code(?ERR_RIDE_ADVANCE_LEVEL) -> true;
is_valid_err_code(?ERR_RIDE_CHANGE_NO_NUM) -> true;
is_valid_err_code(?ERR_RIDE_EVOLVE_MAX) -> true;
is_valid_err_code(?ERR_GUILD_NOT_JOIN) -> true;
is_valid_err_code(?ERR_GUILD_NOT_PERMISSION) -> true;
is_valid_err_code(?ERR_GUILD_NO_GUILD) -> true;
is_valid_err_code(?ERR_GUILD_HAS_GUILD) -> true;
is_valid_err_code(?ERR_GUILD_INVALID_GUILDNAME) -> true;
is_valid_err_code(?ERR_GUILD_INVALID_NOTICE) -> true;
is_valid_err_code(?ERR_GUILD_NOT_IN_SAMEGUILD) -> true;
is_valid_err_code(?ERR_GUILD_DAILY_NUMBER_FINISHED) -> true;
is_valid_err_code(?ERR_GUILD_MASTER_CONNOT_QUIT) -> true;
is_valid_err_code(?ERR_GUILD_HASALREADY_APPLY) -> true;
is_valid_err_code(?ERR_GUILD_PROTO_ARG_ERROR) -> true;
is_valid_err_code(?ERR_GUILD_UNKNOWN) -> true;
is_valid_err_code(?ERR_GUILD_MINING_INFO) -> true;
is_valid_err_code(?ERR_GUILD_SAINT_NO_OPEN) -> true;
is_valid_err_code(?ERR_GUILD_SAINT_GETTED) -> true;
is_valid_err_code(?ERR_SELLER_NOT_ACTIVATE) -> true;
is_valid_err_code(?ERR_SELLER_NO_THIS_CONFIG) -> true;
is_valid_err_code(?ERR_SELLER_NO_THIS_RANDOM_ID) -> true;
is_valid_err_code(?ERR_SELLER_DIAMOND_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_SELLER_COST_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_SELLER_ARG_ERROR) -> true;
is_valid_err_code(?ERR_SELLER_BUY_COUNT_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_ACC_THIS_ACCID_NOT_ACCEPT) -> true;
is_valid_err_code(?ERR_ACC_CHECH_ERR) -> true;
is_valid_err_code(?ERR_CAMP_HAVE_OPEN) -> true;
is_valid_err_code(?ERR_CAMP_NOT_OPEN) -> true;
is_valid_err_code(?ERR_CAMP_NOT_JOIN_CAMP) -> true;
is_valid_err_code(?ERR_CAMP_NOT_FIGHT) -> true;
is_valid_err_code(?ERR_CAMP_HAVE_CAMP) -> true;
is_valid_err_code(?ERR_CAMP_NOT_PERSION) -> true;
is_valid_err_code(?ERR_CAMP_SELECT_CAMP) -> true;
is_valid_err_code(?ERR_CAMP_NO_ENOUGH_COUNT) -> true;
is_valid_err_code(?ERR_CAMP_CHECH_INSTANCE_ERROR) -> true;
is_valid_err_code(?ERR_CAMP_EXIT_IN_THIS_SCENE) -> true;
is_valid_err_code(?ERR_CAMP_IS_FIGHT) -> true;
is_valid_err_code(?ERR_CAMP_IS_IN_BOSS_ROOM) -> true;
is_valid_err_code(?ERR_CAMP_NOT_INVADE) -> true;
is_valid_err_code(?ERR_CAMP_NO_FIGHT) -> true;
is_valid_err_code(?ERR_CAMP_GUARD_MY_INS) -> true;
is_valid_err_code(?ERR_ABYSS_NOT_OPEN) -> true;
is_valid_err_code(?ERR_ABYSS_MAX_ENTER_LAYER) -> true;
is_valid_err_code(?ERR_ABYSS_AUTO_MAX_LAYER) -> true;
is_valid_err_code(?ERR_ABYSS_NO_THIS_LAYER) -> true;
is_valid_err_code(?ERR_ABYSS_THIS_HEIGHT_LAYER) -> true;
is_valid_err_code(?ERR_ABYSS_MAX_COUNT) -> true;
is_valid_err_code(?ERR_ABYSS_COST_FAIL) -> true;
is_valid_err_code(?ERR_ABYSS_ENTER_SCENE_FIAL) -> true;
is_valid_err_code(?ERR_ABYSS_LIMIT_LEVEL) -> true;
is_valid_err_code(?ERR_ABYSS_EASY_LAYER_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_LOOKUP_LVL_PRIZE_CFG) -> true;
is_valid_err_code(?ERR_SINK_STATE) -> true;
is_valid_err_code(?ERR_DIAMOND_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_UNKNOW) -> true;
is_valid_err_code(?ERR_ERROR_TIME) -> true;
is_valid_err_code(?ERR_ERROR_ORDER_ID) -> true;
is_valid_err_code(?ERR_ERROR_GIVE) -> true;
is_valid_err_code(?ERR_ERROR_DAILY_TASK_PRIZE) -> true;
is_valid_err_code(?ERR_PAY_NOT_ENOUGH) -> true;
is_valid_err_code(?ERR_QQ_PAY_HAS_ORDER) -> true;
is_valid_err_code(?ERR_QQ_PAY_TOKEN) -> true;
is_valid_err_code(?ERR_QQ_PAY_FAILURE) -> true;
is_valid_err_code(?ERR_PAY_LIMIT) -> true;
is_valid_err_code(?ERR_VIP_BUYED) -> true;
is_valid_err_code(?ERR_MAIN_STAR_SHOP_NOT_OPEN) -> true;
is_valid_err_code(?ERR_TEAM_NOT_LEADER) -> true;
is_valid_err_code(?ERR_TEAM_IS_FULL) -> true;
is_valid_err_code(?ERR_TEAM_ALREADY_EXIST) -> true;
is_valid_err_code(?ERR_TEAM_TYPE_ERROR) -> true;
is_valid_err_code(?ERR_TEAM_FAST_JOIN) -> true;
is_valid_err_code(?ERR_TEAM_NOT_EXIST_PLAYER) -> true;
is_valid_err_code(?ERR_TEAM_NOT_JOIN_SELF) -> true;
is_valid_err_code(?ERR_GWGC_NOT_CAN_FIGHT) -> true;
is_valid_err_code(?ERR_GWGC_NOT_LOOK) -> true;
is_valid_err_code(?ERR_GWGC_NOT_STAR) -> true;
is_valid_err_code(?ERR_GWGC_PLAYER_NORMAL_SCENE) -> true;
is_valid_err_code(?ERR_NOT_FOUND_THIS_ITEM) -> true;
is_valid_err_code(?ERR_GIVE_GOODS_ERROR) -> true;
is_valid_err_code(?ERR_NOT_FOUND_CFG_GOODS_LIST) -> true;
is_valid_err_code(?ERR_DEL_GOODS_ERROR) -> true;
is_valid_err_code(_) -> false.
enum_err_code_all() -> [0 , 1, 2, 3, 4, 5, 6, 7, 10, 30, 50, 61, 62, 70, 71, 72, 81, 82, 83, 84, 85, 90, 110, 111, 112, 113, 114, 120, 121, 122, 123, 124, 130, 140, 141, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 480, 481, 482, 483, 484, 485, 486, 487, 488, 489, 490, 491, 500, 501, 502, 503, 504, 505, 506, 507, 508, 509, 510, 511, 512, 513, 514, 601, 602, 603, 604, 605, 606, 607, 611, 612, 621, 622, 623, 624, 625, 626, 627, 628, 629, 630, 631, 632, 633, 634, 635, 701, 702, 703, 704, 705, 706, 707, 708, 709, 710, 731, 732, 733, 734, 735, 761, 762, 763, 764, 765, 766, 767, 768, 769, 790, 791, 792, 793, 794, 795, 796, 797, 798, 799, 800, 801, 851, 852, 853, 854].
enum_err_code_size() -> 145.
err_code_to_i(none_cfg) -> ?ERR_NOT_EXIST_CFG;
err_code_to_i(cost_not_enough) -> ?ERR_COST_NOT_ENOUGH;
err_code_to_i(not_in_ins) -> ?ERR_NOT_IN_INS;
err_code_to_i(cd_limit) -> ?ERR_CD_LIMIT;
err_code_to_i(type_ill) -> ?ERR_TYPE_ILL;
err_code_to_i(not_team_main_ins) -> ?ERR_NOT_TEAM_MAIN_INS;
err_code_to_i(_) -> badarg.

err_code_to_a(?ERR_NOT_EXIST_CFG) -> none_cfg;
err_code_to_a(?ERR_COST_NOT_ENOUGH) -> cost_not_enough;
err_code_to_a(?ERR_NOT_IN_INS) -> not_in_ins;
err_code_to_a(?ERR_CD_LIMIT) -> cd_limit;
err_code_to_a(?ERR_TYPE_ILL) -> type_ill;
err_code_to_a(?ERR_NOT_TEAM_MAIN_INS) -> not_team_main_ins;
err_code_to_a(_) -> badarg.

