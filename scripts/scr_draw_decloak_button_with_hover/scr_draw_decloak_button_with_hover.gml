function scr_draw_decloak_button_with_hover(selected_unit) {
	with(selected_unit) {
		if(owner == global.player) {
			scr_hover_decloak_info()
			draw_sprite_ext(spr_decloak_button, 0, other.hud_s_button_x, other.hud_s_button_y, other.spell_button_width / sprite_get_width(spr_decloak_button), other.spell_button_height / sprite_get_height(spr_decloak_button), 0, -1, 1)
			draw_sprite_ext(spr_abilities_button, 0, other.hud_abilities_x, other.hud_abilities_y, other.spell_button_width / sprite_get_width(spr_abilities_button), other.spell_button_height / sprite_get_height(spr_abilities_button), 0, -1, 1)
			if(object_is_ancestor(object_index, obj_hero)) {
				if(number_of_ability_points > 0) {
					draw_text_ext_transformed_color(other.hud_abilities_x, other.hud_abilities_y, string(number_of_ability_points), -1, -1, 4, 4, 0, c_green, c_green, c_green, c_green, 1)
				}
			}	
		}
	}
}