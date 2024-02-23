function scr_dra_hud_button_with_hover_inf_hero(var_selected_unit) {
	with(var_selected_unit) {
		if(!global.hud.gui_display_abilities) {
			if(spell_q.learned() ) {
				if(mouse_is_on_q()) {
					draw_hover_info()	
				}
				draw_sprite_ext(spr_q_button, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
				draw_set_color(c_black)
				draw_set_alpha(0.5)
				if(var_cooldown_q_quotient>0) {
					draw_rectangle(other.hud_q_button_x - var_cooldown_q_quotient * other.spell_button_width/2, other.hud_q_button_y - other.spell_button_height/2, other.hud_q_button_x + var_cooldown_q_quotient * other.spell_button_width/2, other.hud_q_button_y + other.spell_button_height/2, 0)
				}
				draw_set_alpha(1)
			}

			for(var i = 0; i < array_length(skills); i++) {
				with(skills[i]) {
					if(lvl > 0) {
						if(mouse_is_on()) {
							draw_hover_info()
						}
						draw_sprite_ext(icon, 0, button_x, button_y, button_width / sprite_get_width(icon), button_height / sprite_get_height(icon), 0, -1, 1)
						draw_set_color(c_black)
						draw_set_alpha(0.5)
						var cooldown_quotient = cooldown_current / cooldown
						if(cooldown_quotient > 0) {
							draw_rectangle(button_x - cooldown_quotient * button_width / 2, button_y - button_height / 2, button_x + cooldown_quotient * button_width / 2, button_y + button_height / 2, 0)
						}
						draw_set_alpha(1)
					}
				}
			}
			if(owner == global.player) {
				scr_hover_s_info()
				draw_sprite_ext(spr_s_button, 0, other.hud_s_button_x, other.hud_s_button_y, other.spell_button_width/sprite_get_width(spr_s_button), other.spell_button_height/sprite_get_height(spr_s_button), 0, -1, 1)
				draw_sprite_ext(spr_abilities_button, 0, other.hud_abilities_x, other.hud_abilities_y, other.spell_button_width / sprite_get_width(spr_abilities_button), other.spell_button_height / sprite_get_height(spr_abilities_button), 0, -1, 1)
				if(number_of_ability_points > 0) {	
					draw_text_ext_transformed_color(other.hud_abilities_x, other.hud_abilities_y, string(number_of_ability_points), -1, -1, 4, 4, 0, c_green, c_green, c_green, c_green, 1)
				}
			}
		} else {
			for(var i = 0; i < array_length(spells); i++) {
				if(mouse_is_on()) {
					draw_hover_info_abilities()
				}
				draw_sprite_ext(icon, 0, button_x, button_y, button_width / sprite_get_width(icon), button_height / sprite_get_height(icon), 0, -1, 1)
			}
			draw_sprite_ext(spr_abilities_button, 0, other.hud_abilities_x, other.hud_abilities_y, other.spell_button_width / sprite_get_width(spr_abilities_button), other.spell_button_height / sprite_get_height(spr_abilities_button), 0, -1, 1)
			draw_text_ext_transformed_color(other.hud_abilities_x, other.hud_abilities_y, string(number_of_ability_points), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		}
	}
}
