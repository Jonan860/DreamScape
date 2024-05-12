if(room == map) {
	scr_win_condition_check_and_perform()
	scr_lose_condition_check_and_perform()
	if(phase == GAME_PHASES.battle) {
		scr_audio()	
		with(obj_unit) {
			scr_ai()
			scr_movement()
			for(var i = 0; i < array_length(skills); i++) {
				with(skills[i]) {
					cooldown_current = max(0, cooldown_current - 1 / game_get_speed(gamespeed_fps));
					//if(shouldPerform()) {
					//	perform()
					//}
				}
			}
			for(var i = 0; i < array_length(skills); i++) {
				with(skills[i]) {
					icon_animation_index = autocast ? (icon_animation_index + icon_animation_speed/room_speed) % 7 : 0
				}
			}
			////scr_death()  maybe solves bug see above
		}
		with(obj_unit_producing_building) {
			if(unfinished and global.lille_skutt.is_building == id) {
				updateSelfConstruction()
			}
			if(!ds_list_empty(queue_list)) {
				updateRecruitQueue()
			}
		}

		scr_money_tree_withdrawal()
		scr_hp_regeneration()
		scr_mana_regeneration()
		scr_summons_time_reduction()
		scr_hp_digestion()
		scr_missing_time_countdown()
		scr_stun_countdown()
		scr_earthquake_crack_countdown()
		scr_buff_duration_countdown()
		scr_enemies_wave_generation()
		scr_light_beam_damage()

		with(obj_unit) { //////maybe solves bug instance_destroy is not immidiate
			scr_death()   
		}
	}
}


