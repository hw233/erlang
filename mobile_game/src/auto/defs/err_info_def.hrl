%% Auto generated by defs from err_info.def
%% Don't edit it.

-define(not_team_main_ins, not_team_main_ins).
-define(type_ill, type_ill).
-define(cd_limit, cd_limit).
-define(not_in_ins, not_in_ins).
-define(cost_not_enough, cost_not_enough).
-define(none_cfg, none_cfg).


-type err_atom() :: none_cfg  | level_limit  | err_load  | cost_not_enough  | task_goal_not_complete  | not_stand_npc_side  | not_in_ins  | cd_limit .
%% Enum Atom err_atom begin
% -define(none_cfg, none_cfg).
-define(level_limit, level_limit). %%% 玩家等级不足 更具 
-define(err_load, err_load).
% -define(cost_not_enough, cost_not_enough).
-define(task_goal_not_complete, task_goal_not_complete).
-define(not_stand_npc_side, not_stand_npc_side).
% -define(not_in_ins, not_in_ins).
% -define(cd_limit, cd_limit).
%% Enum Atom err_atom end 

-type gm_return_code() :: 0  | 127 .
%% Enum gm_return_code begin
-define(GM_SUCCESS, 0).
-define(GM_NOT_FIND_TYPE, 127).
%% Enum gm_return_code end 

-type err_mail() :: 0  | 1  | 2  | 3  | 255 .
%% Enum err_mail begin
-define(GET_PRIZE_OK, 0).
-define(GET_PRIZE_1, 1).
-define(GET_PRIZE_2, 2).
-define(GET_PRIZE_3, 3).
-define(GET_PRIZE_255, 255).
%% Enum err_mail end 

-type err_code_daily() :: 731  | 732  | 733 .
%% Enum err_code_daily begin
-define(ERR_DAILY_NO_THIS_TYPE, 731).
-define(ERR_DAILY_NO_THIS_SCENE, 732).
-define(ERR_DAILY_IN_FIGHT, 733).
%% Enum err_code_daily end 

-type err_code_com() :: 201  | 202  | 203  | 204  | 205  | 206  | 207  | 208  | 209  | 210  | 211  | 212  | 213  | 214  | 215  | 216  | 217  | 218  | 219  | 220  | 221  | 222 .
%% Enum err_code_com begin
-define(ERR_NOT_OPEN_FUN, 201).
-define(ERR_COST_MONEY_FAIL, 202).
-define(ERR_COST_DIAMOND_FAIL, 203).
-define(ERR_LIMIT_LEVEL, 204).
-define(ERR_MAX_COUNT, 205).
-define(ERR_MAX_LEVEL, 206).
-define(ERR_NO_CFG, 207).
-define(ERR_PLAYER_OFFLINE, 208).
-define(ERR_MAIN_INS_START_NOT_ENOUGH, 209).
-define(ERR_MAIN_SHOP_NOT_GOODS, 210).
-define(ERR_ACCOUNT_PASSWORD, 211).
-define(ERR_ACCOUNT_FREEZE, 212).
-define(ERR_PLAYER_FREEZE, 213).
-define(ERR_CLEAN_MAIN_INS_PASS, 214).
-define(ERR_CLEAN_MAIN_INS_SP_ENOUGH, 215).
-define(ERR_ACCOUNT_ONLY_JOIN_ONE, 216).
-define(ERR_CLEAN_MAIN_INS_SEVEN_STAR_PASS, 217).
-define(ERR_JINXING_FAIL, 218).
-define(ERR_YINXING_FAIL, 219).
-define(ERR_MAIN_INS_SWEEP_NOT_ENOUGH, 220).
-define(ERR_BUY_CHALLENGE_NOT_ENOUGH, 221).
-define(ERR_BUY_CHALLENGE_NOT_MAIN_INS, 222).
%% Enum err_code_com end 

-type err_code() :: 0  | 1  | 2  | 3  | 4  | 5  | 6  | 7  | 10  | 30  | 50  | 61  | 62  | 70  | 71  | 72  | 81  | 82  | 83  | 84  | 85  | 90  | 110  | 111  | 112  | 113  | 114  | 120  | 121  | 122  | 123  | 124  | 130  | 140  | 141  | 150  | 151  | 152  | 153  | 154  | 155  | 156  | 157  | 158  | 159  | 160  | 161  | 162  | 163  | 164  | 165  | 166  | 167  | 168  | 480  | 481  | 482  | 483  | 484  | 485  | 486  | 487  | 488  | 489  | 490  | 491  | 500  | 501  | 502  | 503  | 504  | 505  | 506  | 507  | 508  | 509  | 510  | 511  | 512  | 513  | 514  | 601  | 602  | 603  | 604  | 605  | 606  | 607  | 611  | 612  | 621  | 622  | 623  | 624  | 625  | 626  | 627  | 628  | 629  | 630  | 631  | 632  | 633  | 634  | 635  | 701  | 702  | 703  | 704  | 705  | 706  | 707  | 708  | 709  | 710  | 731  | 732  | 733  | 734  | 735  | 761  | 762  | 763  | 764  | 765  | 766  | 767  | 768  | 769  | 790  | 791  | 792  | 793  | 794  | 795  | 796  | 797  | 798  | 799  | 800  | 801  | 851  | 852  | 853  | 854 .
%% Enum err_code begin
-define(ERR_OK, 0).
-define(ERR_ROLE_NOT_EXIST, 1).
-define(ERR_ROLE_NAME_NOT_ILLEGAL, 2).
-define(ERR_ROLE_NAME_ALREAY_EXIST, 3).
-define(ERR_NOT_EXIST_CFG, 4).
-define(ERR_SYSTEM, 5).
-define(ERR_SET_ATTR, 6).
-define(ERR_AUTH_MESSAGE, 7).
-define(ERR_ITEM_NOT_EXIST, 10).
-define(ERR_ENTER_SCENE_REQUEST_DISAPPROVED, 30).
-define(ERR_COST_NOT_ENOUGH, 50).
-define(ERR_POINT_NOT_WALKABLE, 61).
-define(ERR_NOT_IN_INS, 62).
-define(ERR_NOT_EXIST_SKILL, 70).
-define(ERR_CD_LIMIT, 71).
-define(ERR_TYPE_ILL, 72).
-define(ERR_CROWN_GEM_ALREADY_DRESS, 81).
-define(ERR_CROWN_GEM_NOT_DRESSED, 82).
-define(ERR_CROWN_SLOT_FULL, 83).
-define(ERR_CROWN_GEM_FULL_LEVEL, 84).
-define(ERR_CROWN_ANGER_NOT_FULL, 85).
-define(ERR_FRIEND_NO_FRIEND, 90).
-define(ERR_TEAM_INS_ROOM_NOT_EXIST, 110).
-define(ERR_NOT_TEAM_MAIN_INS, 111).
-define(ERR_SP_NOT_ENOUGHT, 112).
-define(ERR_CHAPTER_START_PRIZE_1, 113).
-define(ERR_CHAPTER_START_PRIZE_2, 114).
-define(ERR_SKILL_LW_IS_EXIST, 120).
-define(ERR_SKILL_NO_ID, 121).
-define(ERR_SKILL_LW_LEVEL_NOT_ENOUGH, 122).
-define(ERR_SKILL_LW_MAX, 123).
-define(ERR_SKILL_LW_LEVEL_ERROR, 124).
-define(ERR_BAG_FULL, 130).
-define(ERR_TITLE_NOT_EXIST, 140).
-define(ERR_TITLE_IS_CUR_TITLE, 141).
-define(ERR_PET_SKILL_ALREADY_STUDY, 150).
-define(ERR_PET_SKILL_NOT_STUDY, 151).
-define(ERR_PET_FIGHT_STATUS, 152).
-define(ERR_PET_NOT_EXIST, 153).
-define(ERR_PET_CANT_ADVANCE, 154).
-define(ERR_PET_SKILL_POS_NOT_ACTIVE, 155).
-define(ERR_PET_SKILL_POS_ALREADY_LOAD, 156).
-define(ERR_PET_TREASURE, 157).
-define(ERR_PET_NOT_TREASURE, 158).
-define(ERR_PET_TREASURE_NOT_EXIST, 159).
-define(ERR_PET_POS_ISOPEN, 160).
-define(ERR_PET_POS_CANOPEN, 161).
-define(ERR_PET_POS_REPEAT, 162).
-define(ERR_PET_POS_REPEAT_OF_ATTR, 163).
-define(ERR_PET_NOT_PASSIVITYSKILL_ID, 164).
-define(ERR_PET_MAX_LEVEL, 165).
-define(ERR_PET_NOT_SHANGZHEN, 166).
-define(ERR_PET_NOT_XIAZHEN, 167).
-define(ERR_PET_NOT_FENGYIN, 168).
-define(ERR_RIDE_NO_ENOUGH, 480).
-define(ERR_RIDE_NO_THIS_RIDE, 481).
-define(ERR_RIDE_NO_RIDING, 482).
-define(ERR_RIDE_LEVELMAX, 483).
-define(ERR_RIDE_EXP_NO_ENOUGH, 484).
-define(ERR_RIDE_CHANGE_NO_CD, 485).
-define(ERR_RIDE_MAX_HAPPY, 486).
-define(ERR_RIDE_LEVEL_ENOUGH, 487).
-define(ERR_RIDE_HAPPY_ENOUGH, 488).
-define(ERR_RIDE_ADVANCE_LEVEL, 489).
-define(ERR_RIDE_CHANGE_NO_NUM, 490).
-define(ERR_RIDE_EVOLVE_MAX, 491).
-define(ERR_GUILD_NOT_JOIN, 500).
-define(ERR_GUILD_NOT_PERMISSION, 501).
-define(ERR_GUILD_NO_GUILD, 502).
-define(ERR_GUILD_HAS_GUILD, 503).
-define(ERR_GUILD_INVALID_GUILDNAME, 504).
-define(ERR_GUILD_INVALID_NOTICE, 505).
-define(ERR_GUILD_NOT_IN_SAMEGUILD, 506).
-define(ERR_GUILD_DAILY_NUMBER_FINISHED, 507).
-define(ERR_GUILD_MASTER_CONNOT_QUIT, 508).
-define(ERR_GUILD_HASALREADY_APPLY, 509).
-define(ERR_GUILD_PROTO_ARG_ERROR, 510).
-define(ERR_GUILD_UNKNOWN, 511).
-define(ERR_GUILD_MINING_INFO, 512).
-define(ERR_GUILD_SAINT_NO_OPEN, 513).
-define(ERR_GUILD_SAINT_GETTED, 514).
-define(ERR_SELLER_NOT_ACTIVATE, 601).
-define(ERR_SELLER_NO_THIS_CONFIG, 602).
-define(ERR_SELLER_NO_THIS_RANDOM_ID, 603).
-define(ERR_SELLER_DIAMOND_NOT_ENOUGH, 604).
-define(ERR_SELLER_COST_NOT_ENOUGH, 605).
-define(ERR_SELLER_ARG_ERROR, 606).
-define(ERR_SELLER_BUY_COUNT_NOT_ENOUGH, 607).
-define(ERR_ACC_THIS_ACCID_NOT_ACCEPT, 611).
-define(ERR_ACC_CHECH_ERR, 612).
-define(ERR_CAMP_HAVE_OPEN, 621).
-define(ERR_CAMP_NOT_OPEN, 622).
-define(ERR_CAMP_NOT_JOIN_CAMP, 623).
-define(ERR_CAMP_NOT_FIGHT, 624).
-define(ERR_CAMP_HAVE_CAMP, 625).
-define(ERR_CAMP_NOT_PERSION, 626).
-define(ERR_CAMP_SELECT_CAMP, 627).
-define(ERR_CAMP_NO_ENOUGH_COUNT, 628).
-define(ERR_CAMP_CHECH_INSTANCE_ERROR, 629).
-define(ERR_CAMP_EXIT_IN_THIS_SCENE, 630).
-define(ERR_CAMP_IS_FIGHT, 631).
-define(ERR_CAMP_IS_IN_BOSS_ROOM, 632).
-define(ERR_CAMP_NOT_INVADE, 633).
-define(ERR_CAMP_NO_FIGHT, 634).
-define(ERR_CAMP_GUARD_MY_INS, 635).
-define(ERR_ABYSS_NOT_OPEN, 701).
-define(ERR_ABYSS_MAX_ENTER_LAYER, 702).
-define(ERR_ABYSS_AUTO_MAX_LAYER, 703).
-define(ERR_ABYSS_NO_THIS_LAYER, 704).
-define(ERR_ABYSS_THIS_HEIGHT_LAYER, 705).
-define(ERR_ABYSS_MAX_COUNT, 706).
-define(ERR_ABYSS_COST_FAIL, 707).
-define(ERR_ABYSS_ENTER_SCENE_FIAL, 708).
-define(ERR_ABYSS_LIMIT_LEVEL, 709).
-define(ERR_ABYSS_EASY_LAYER_NOT_ENOUGH, 710).
-define(ERR_LOOKUP_LVL_PRIZE_CFG, 731).
-define(ERR_SINK_STATE, 732).
-define(ERR_DIAMOND_NOT_ENOUGH, 733).
-define(ERR_UNKNOW, 734).
-define(ERR_ERROR_TIME, 735).
-define(ERR_ERROR_ORDER_ID, 761).
-define(ERR_ERROR_GIVE, 762).
-define(ERR_ERROR_DAILY_TASK_PRIZE, 763).
-define(ERR_PAY_NOT_ENOUGH, 764).
-define(ERR_QQ_PAY_HAS_ORDER, 765).
-define(ERR_QQ_PAY_TOKEN, 766).
-define(ERR_QQ_PAY_FAILURE, 767).
-define(ERR_PAY_LIMIT, 768).
-define(ERR_VIP_BUYED, 769).
-define(ERR_MAIN_STAR_SHOP_NOT_OPEN, 790).
-define(ERR_TEAM_NOT_LEADER, 791).
-define(ERR_TEAM_IS_FULL, 792).
-define(ERR_TEAM_ALREADY_EXIST, 793).
-define(ERR_TEAM_TYPE_ERROR, 794).
-define(ERR_TEAM_FAST_JOIN, 795).
-define(ERR_TEAM_NOT_EXIST_PLAYER, 796).
-define(ERR_TEAM_NOT_JOIN_SELF, 797).
-define(ERR_GWGC_NOT_CAN_FIGHT, 798).
-define(ERR_GWGC_NOT_LOOK, 799).
-define(ERR_GWGC_NOT_STAR, 800).
-define(ERR_GWGC_PLAYER_NORMAL_SCENE, 801).
-define(ERR_NOT_FOUND_THIS_ITEM, 851).
-define(ERR_GIVE_GOODS_ERROR, 852).
-define(ERR_NOT_FOUND_CFG_GOODS_LIST, 853).
-define(ERR_DEL_GOODS_ERROR, 854).
%% Enum err_code end 

