function scr_dra_hud_button_with_hover_inf_building() {
	if(!global.hud.gui_display_abilities) {
		var buttons = ["q", "w", "e", "r", "a", "s", "d"]
		for(var i = 0; i < array_length(buttons); i++) {
			var button = buttons[i]
			with(global.tile_selected) {
				with(selected_units[|0]) {
					with(ds_map_find_value(buttonToSkill, button)) {
						draw_sprite_ext(icon, 0, global.hud.charToButton[?button]._x, global.hud.charToButton[?button]._y, global.hud.spell_button_width / sprite_get_width(icon), global.hud.spell_button_height / sprite_get_height(icon), 0, -1, 1)
						draw_text(global.hud.charToButton[?button]._x, global.hud.charToButton[?button]._y, info)
					}
				}
			}	
		}
	} 
}

function scr_dra_hud_button_with_hover_inf_hero(var_selected_unit) {
	with(var_selected_unit) {
		if(!global.hud.gui_display_abilities) {
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

function scr_dra_hud_button_with_hover_inf_lille_skutt() {
	var buttons = ["q", "w", "s"]
	for (var i = 0; i < array_length(buttons); i++) {
		var button = buttonToSkill[?buttons[i]]
		var hudButton = global.hud.charToButton[? buttons[i]]
		draw_sprite_ext(button.icon, 0, hudButton._x, hudButton._y, global.hud.spell_button_width / sprite_get_width(button.icon), global.hud.spell_button_height / sprite_get_height(button.icon), 0, -1, 1)	
	}
}

function scr_dra_hud_buttons_with_hover_inf_mage() {
	if(learned) {
		draw_sprite_ext(button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
		scr_hover_w_info_abilities()
	}
	var subimg = floor(icon_animation_index)
	draw_sprite_ext(button, subimg, button_x, button_y, button_width / sprite_get_width(button), button_height/sprite_get_height(icon), 0, -1, 1)		
	for(var i = 0; i < array_length(buttons); i++) {
		if(mouse_is_on(buttons[i])) {
			scr_hover_info_abilities(buttons[i])
		}
	}
}