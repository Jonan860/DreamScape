if(room == map) {
	scr_win_condition_check_and_perform()
	scr_lose_condition_check_and_perform()
	if(phase == "battle") {
		scr_audio()	
		with(obj_unit) {
			scr_update_vampiric_aura_status() //should not be here
			scr_ai()
			scr_movement()
			for(var i = 0; i < array_length(skills); i++) {
				with(skills[i]) {
					if(shouldPerform) {
						perform()
					}
				}
			}
			for(var i = 0; i < array_length(skills); i++) {
				with(skills[i]) {
					icon_animation_index = autocast_is_on ? (icon_animation_index + icon_animation_speed/room_speed) % 7 : 0
				}
			}
			////scr_death()  maybe solves bug see above
		}

		with(obj_unit_producing_building) {
			updateQueue()
		}

		

		scr_money_tree_withdrawal()
		scr_hp_regeneration()
		scr_mana_regeneration()
		scr_summons_time_reduction()
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


