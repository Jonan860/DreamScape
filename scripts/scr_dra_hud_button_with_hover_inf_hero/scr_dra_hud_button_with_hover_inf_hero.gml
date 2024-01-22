function scr_dra_hud_button_with_hover_inf_hero(var_selected_unit) {
	with(var_selected_unit) {
		var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
		var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
		var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
		var var_cooldown_r_quotient = spell_r_cooldown_current / spell_r_cooldown_max
		
		if(!global.hud.gui_display_abilities) {
			if(spell_q_lvl > 0) {
				scr_hover_q_info()
				draw_sprite_ext(spr_q_button, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
				draw_set_color(c_black)
				draw_set_alpha(0.5)
				if(var_cooldown_q_quotient>0) {
					draw_rectangle(other.hud_q_button_x - var_cooldown_q_quotient * other.spell_button_width/2, other.hud_q_button_y - other.spell_button_height/2, other.hud_q_button_x + var_cooldown_q_quotient * other.spell_button_width/2, other.hud_q_button_y + other.spell_button_height/2, 0)
				}
				draw_set_alpha(1)
			}
			if(spell_w_lvl > 0) {
				scr_hover_w_info()
				draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
				draw_set_color(c_black)
				draw_set_alpha(0.5)
				if(var_cooldown_w_quotient>0) {
					draw_rectangle(other.hud_w_button_x - var_cooldown_w_quotient * other.spell_button_width/2, other.hud_w_button_y - other.spell_button_height/2, other.hud_w_button_x + var_cooldown_w_quotient * other.spell_button_width/2, other.hud_w_button_y + other.spell_button_height/2, 0)
				}
				draw_set_alpha(1)
			}
			if(spell_e_lvl > 0) {
				scr_hover_e_info()
				draw_sprite_ext(spr_e_button, 0, other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
				draw_set_color(c_black)
				draw_set_alpha(0.5)
				if(var_cooldown_e_quotient > 0) {
					draw_rectangle(other.hud_e_button_x - var_cooldown_e_quotient * other.spell_button_width/2, other.hud_e_button_y - other.spell_button_height/2, other.hud_e_button_x + var_cooldown_e_quotient * other.spell_button_width/2, other.hud_e_button_y + other.spell_button_height/2, 0)
				}
				draw_set_alpha(1)
			}
			if(spell_r_lvl > 0) {
				scr_hover_r_info()
				draw_sprite_ext(spr_r_button, 0, other.hud_r_button_x, other.hud_r_button_y, other.spell_button_width / sprite_get_width(spr_r_button), other.spell_button_height / sprite_get_height(spr_r_button), 0, -1, 1)
				draw_set_color(c_black)
				draw_set_alpha(0.5)
				if(var_cooldown_r_quotient > 0) {
					draw_rectangle(other.hud_r_button_x - var_cooldown_r_quotient * other.spell_button_width/2, other.hud_r_button_y - other.spell_button_height/2, other.hud_r_button_x + var_cooldown_r_quotient * other.spell_button_width / 2, other.hud_r_button_y + other.spell_button_height/2, 0)
				}
				draw_set_alpha(1)
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
			draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
			scr_hover_w_info_abilities()
			draw_text_ext_transformed_color(other.hud_w_button_x, other.hud_w_button_y, string(spell_w_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
			draw_sprite_ext(spr_q_button, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
			draw_text_ext_transformed_color(other.hud_q_button_x, other.hud_q_button_y, string(spell_q_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
			scr_hover_q_info_abilities()
			draw_sprite_ext(spr_e_button, 0, other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
			draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
			scr_hover_e_info_abilities()
			draw_sprite_ext(spr_r_button, 0, other.hud_r_button_x, other.hud_r_button_y, other.spell_button_width / sprite_get_width(spr_r_button), other.spell_button_height / sprite_get_height(spr_r_button), 0, -1, 1)
			draw_text_ext_transformed_color(other.hud_r_button_x, other.hud_r_button_y, string(spell_r_lvl),-1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
			scr_hover_r_info_abilities()
			draw_sprite_ext(spr_abilities_button, 0, other.hud_abilities_x, other.hud_abilities_y, other.spell_button_width / sprite_get_width(spr_abilities_button), other.spell_button_height / sprite_get_height(spr_abilities_button), 0, -1, 1)
			draw_text_ext_transformed_color(other.hud_abilities_x, other.hud_abilities_y, string(number_of_ability_points), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		}
	}
}
