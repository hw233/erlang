{application,mobile_game,
             [{description,"game"},
              {vsn,"1"},
              {registered,[]},
              {applications,[kernel,stdlib]},
              {mod,{mobile_game_app,[]}},
              {env,[]},
              {modules,[abyss_mng,abyss_server,abyss_sproto,
                        accept_newbie_guide_task_tgr,accomplishments_mng,
                        accomplishments_plugin,accomplishments_sproto,account,
                        achievement_mng,agent_ai,agent_util,alchemy_mng,
                        alchemy_sproto,api,arena_compete,arena_handle_client,
                        arena_log_db,arena_m_p2p,arena_mng,arena_p2e,
                        arena_p2p,arena_server,arena_sproto,arena_util,
                        attack_area_tgr,attenuation,attr,attr_algorithm,
                        attr_new,auction_new_mng,auction_new_svr,
                        auction_sproto,auth_qq,blessing_tgr,bounty_mng,
                        bounty_server,bounty_sproto,bucket_sync,buf,
                        buff_plug_addattr,buff_plug_attrs,buff_plug_erudition,
                        buff_plug_group,buff_plug_halo,buff_plug_hudun,
                        buff_plug_hurt,buff_plug_move,buff_plug_passive,
                        buff_plug_release,buff_plug_reset,buff_plug_tag,
                        buff_plugin_monster_hp,
                        buff_plugin_monster_spirit_stat,buff_system,buff_util,
                        bullet_agent,bullet_attack_area,bullet_attack_tgr,
                        calculate_trajectory,camp_handle_client,camp_mng,
                        camp_service,camp_sproto,card,card_mng,card_new_mng,
                        card_new_sproto,card_sproto,card_svr,cd_key,
                        charge_reward_part,chat_mng,chat_sproto,
                        client_need_global_remove,collect_thing_tgr,
                        com_mod_sup,command,cost,course_mng,course_sproto,
                        crown_mng,crown_new_mng,crown_new_sproto,crown_sproto,
                        daily_activity_handle_client,daily_activity_mng,
                        daily_activity_service,daily_activity_sproto,
                        daily_task_tgr,daily_task_tool,damage,day_reset,
                        db_repair,dead_tgr,debug,debug_sproto,diaoyu_mng,
                        dig_sproto,dirty_chars,double_prize_server,effect,
                        entity_factory,equip_buf,equip_sproto,equip_system,
                        equipment_mng,erlang_api,erlang_db,err_info,
                        err_info_def,event_eng,event_server,event_system,
                        evt_util,fight_interface,finish_task_trigger_tgr,
                        freely_fall_speed,friend,friend_gift_svr,friend_mng,
                        friend_sproto,game_def,game_res,gem,gem_mng,
                        gem_sproto,gen_id,global_data,gm_def,gm_mng,gm_sproto,
                        gongcheng_mng,gongcheng_sproto,goods_bid_iterator,
                        goods_bucket,goods_id_iterator,goods_iterator,
                        goods_mng,goods_pos_iterator,goods_system,guild_boss,
                        guild_def,guild_handle_client,guild_mining_mng,
                        guild_mining_server,guild_mining_sproto,guild_mng,
                        guild_service,guild_sproto,gwgc_server,handle_client,
                        honest_user_mng,honest_user_sproto,
                        impact_ranking_list_handle_client,
                        impact_ranking_list_service,
                        impact_ranking_list_sproto,info_log,item_bucket_def,
                        item_equip,item_goods,item_new,item_sproto,jpush_http,
                        jpush_service,kill_monster_tgr,limit_value_eng,
                        listener_cmd,load_abyss_integral_reward,load_alchemy,
                        load_arena_cfg,load_auction_ai,load_battle_coef,
                        load_black_shop_cfg,load_career_attr,
                        load_cfg_achievement,load_cfg_arena_robot,
                        load_cfg_broadcast,load_cfg_buff,load_cfg_camp,
                        load_cfg_card,load_cfg_cd_key_rule,load_cfg_city,
                        load_cfg_compound,load_cfg_crown,
                        load_cfg_daily_activity,load_cfg_daily_task,
                        load_cfg_emits,load_cfg_fishing_prize,load_cfg_gates,
                        load_cfg_gem,load_cfg_guild,load_cfg_guild_boss,
                        load_cfg_guild_saint,load_cfg_gwgc,load_cfg_halo,
                        load_cfg_impact_ranking_list,load_cfg_mail,
                        load_cfg_main_ins,load_cfg_main_star_shop,
                        load_cfg_mall,load_cfg_mining_prize,
                        load_cfg_monster_group,load_cfg_monster_script,
                        load_cfg_monster_show,load_cfg_new_pet,
                        load_cfg_open_server_happy,load_cfg_pet,
                        load_cfg_punchs,load_cfg_recharge_prize,load_cfg_reel,
                        load_cfg_ride,load_cfg_scene,load_cfg_scene_collect,
                        load_cfg_scene_device,load_cfg_scene_drop,
                        load_cfg_scene_map,load_cfg_scene_portal,
                        load_cfg_seller,load_cfg_server_login_prize,
                        load_cfg_shangjin_task,load_cfg_shop,load_cfg_skill,
                        load_cfg_sky,load_cfg_suit_fenjie,
                        load_cfg_task_buff_pool,load_cfg_time_trigger,
                        load_cfg_title,load_cost,load_course,
                        load_day_login_prize,load_db_guild_first_kill,
                        load_db_main_ins,load_db_misc,load_dial_prize,
                        load_dig_goods,load_double_prize,load_equip_change,
                        load_equip_expand,load_honest_user_cfg,load_item,
                        load_lvl_prize,load_nine_lottery_cfg,
                        load_offset_goods,load_pay_order,load_pay_prize,
                        load_phase_ac,load_richang_task,load_robot_cfg,
                        load_rule_chart,load_scene_monster,load_segments,
                        load_server_info,load_simple_task,load_spirit_attr,
                        load_task_open_fun,load_task_progress,load_unlock,
                        load_vip_new,load_vip_right,login_prize_part,
                        login_prize_sproto,login_sort,lvl_tgr,mail_mng,
                        mail_sproto,main_ins,main_ins_mod,main_ins_team_mod,
                        main_ins_util,main_instance_mng,
                        main_instance_rank_server,main_instance_sproto,
                        main_star_shop_mng,main_star_shop_sproto,mall_mng,
                        mall_server,mall_sproto,map_agent,map_aoi,map_block,
                        map_hit,map_observers,map_point,misc_cfg,
                        mobile_game_app,mobile_game_cmd,mobile_game_sup,
                        model_box,monster_ai_default,monster_group,
                        monster_script,monster_show,monster_skill_mng,
                        month_reset,mount_tgr,move_debug_tgr,move_h_tgr,
                        move_path_tgr,move_tgr_util,move_util,move_x_tgr,
                        move_xy_tgr,move_y_tgr,msg_service,mst_ai_lua,
                        mst_ai_plug,mst_ai_sys,my_ets,my_sup,my_wk,mysql_db,
                        nine_lottery_mng,nine_lottery_server,
                        nine_lottery_sproto,notice_system,npc,
                        open_server_happy_mng,open_server_happy_sproto,
                        otp_util,pay_goods_part,payment_confirm,
                        payment_system,pet_ai,pet_global_server,pet_mng,
                        pet_new_mng,pet_new_sproto,pet_sproto,
                        phase_achievement_mng,phase_achievement_sproto,pl_fsm,
                        pl_util,platfrom,player,player_base_data,
                        player_data_db,player_debug,player_def,player_eng,
                        player_handle_client,player_log_service,player_mng,
                        player_mod,player_mods_manager,player_payment,
                        player_prop_zip_key,player_room_part,player_sproto,
                        player_sup,player_util,plug_attack,plug_ba_ti,
                        plug_beat_horizontal,plug_beat_vertical,plug_buff,
                        plug_dizzy,plug_jumping,plug_moving,
                        plug_path_teleport,plug_stiff,plug_wait_for_moving,
                        porsche_gearbox,prize,prize_tgr,proto_info,rand_util,
                        rank_mng,rank_sproto,ranking_lib,ranking_lib_test,
                        recharge_reward_mng,recharge_reward_sproto,ret,
                        ride_mng,ride_sproto,rm_debug,rm_monster,rm_system,
                        rm_user_evt,robot_debug_sproto,robot_fsm,
                        robot_item_sproto,robot_new,robot_new_server,
                        robot_new_sup,robot_player_sproto,robot_proto_info,
                        room_map,room_scene,room_sup,room_system,safe_ets,
                        scene,scene_agent,scene_agent_factory,scene_arena,
                        scene_client_mng,scene_collect,scene_def,scene_device,
                        scene_drop,scene_eng,scene_event_callback,scene_fight,
                        scene_gm,scene_main_ins,scene_map,scene_mng,scene_mod,
                        scene_monster,scene_monster_buff,scene_monster_def,
                        scene_normal,scene_pet,scene_player,
                        scene_player_plugin,scene_portal,scene_sproto,
                        scene_sup,scene_team,scene_type_mod,seller_mng,
                        seller_sproto,server_login_prize_mng,
                        server_login_prize_sproto,server_res_eng,
                        shapeshift_mng,shop_mng,shop_sproto,shop_system,
                        single_dig,single_dig_tgr,sinks_state_part,
                        sinks_state_sproto,situation_calculate,skill_mng,
                        skill_modify_util,skill_sproto,sky_handle_client,
                        sky_ins_sproto,sky_mng,sky_service,
                        submit_task_trigger_tgr,sundry_tgr,system_gm,
                        system_log,talk_npc_tgr,task_def,task_handle_client,
                        task_mng_new,task_open_fun,task_sproto,task_system,
                        task_tgr,task_tgr_builder,tcp_eng,team_mng,team_mod,
                        team_server,team_sproto,team_svr,test_callback,
                        time_bucket,timer_eng,timer_server,
                        timer_trigger_server,title_mng,title_service,
                        titles_sproto,treasure_map,use_goods,utf8_file,util,
                        util_timer,version,version_sproto,vip_new_mng,
                        vip_new_sproto,virtual_db,week_reset,world,
                        xml_parse]}]}.