if(room == map) {
	scr_win_condition_check_and_perform()
	scr_lose_condition_check_and_perform()
	if(phase == "battle") {
		scr_audio()	
		with(obj_unit) {
	
			scr_update_vampiric_aura_status()
	

			scr_ai()

			if(owner == global.creep_lord) {
				scr_creep_ai()
			}
			scr_movement()
			scr_revive()
			////scr_death()  maybe solves bug see above
		}

		with(obj_unit_producing_building) {
			var var_object_first_in_queue = queue_list[|0]
			var var_build_time = ds_map_find_value(global.map_objects_to_build_time, object_index)
			if(unfinished and global.lille_skutt.is_building == id) {
				build_progress += var_build_time/room_speed //game_get_speed(gamespeed_fps)   ////could be something weird here
				if(build_progress > 100) {
					unfinished = 0
					build_progress = 0////
				}
			}
			if(!ds_list_empty(queue_list)) {
				build_progress += 1/room_speed  //game_get_speed(gamespeed_fps)
				var var_time = ds_map_find_value(global.map_objects_to_build_time, var_object_first_in_queue)
				if(build_progress >= var_time) {
					var_object_first_in_queue.build()
				}
			}
		}

		with(global.lille_skutt) {
			if(human_barracks_build_queue_lenght > 0) {
				human_barracks_build_progress += 100/5 / room_speed
				if(human_barracks_build_progress == 100) {
					//scr_build_human_barracks()
				}
			}
		}

		with(global.ida) {
			if(phase == "earthshatter jump") {
				scr_perform_earthshatter_jump()	
			}
		}

		scr_money_tree_withdrawal()
		scr_hp_regeneration()
		scr_mana_regeneration()
		scr_summons_time_reduction()
		scr_slow_duration_reduction()
		scr_hp_digestion()
		scr_cooldown_countdown()
		scr_animation_countdown()
		scr_missing_time_countdown()
		scr_frost_nova_countown()
		scr_sleep_timer_countdown()
		scr_earthshatter_jump_countdown()
		scr_stun_countdown()
		scr_earthquake_crack_countdown()
		scr_invisible_count_down()
		scr_buff_duration_countdown()

		scr_enemies_wave_generation()

		scr_light_beam_damage()

		scr_frost_nova_perform()


		with(obj_unit) { //////maybe solves bug instance_destroy is not immidiate
			scr_death()   
		}
	}
}


