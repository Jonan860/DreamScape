function scr_hud_draw_gui_unit_prod_building() {
	with(global.hud) {
		var var_old_align = draw_get_halign()
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_text_transformed(HP_text_x, HP_text_y, "HP: " + string(round(other.HP)) + "/" + string(round(other.max_HP)), 3, 3, 0)
		draw_portrait()
		draw_healthbar(HP_bar_x1, HP_bar_y1, HP_bar_x2, HP_bar_y2, other.HP / other.max_HP * 100, c_black, c_red, c_green, 0, 1, 0)
		draw_set_halign(var_old_align)
	}
	scr_dra_hud_button_with_hover_inf_building()
	if(!ds_list_empty(queue_list)) {
		var var_object = buttonToSkill[?queue_list[|0]].object	
		var var_build_time = ds_map_find_value(global.map_objects_to_build_time, var_object)
		draw_healthbar(other.progress_bar_x1, other.progress_bar_y1, other.progress_bar_x2, other.progress_bar_y2,build_progress / var_build_time * 100, c_black, c_lime, c_green, 0, 1, 0)
		draw_queue()
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

function draw_queue() {
	for(var i = 0; i <= ds_list_size(queue_list) - 1; i += 1) {
		var var_object = buttonToSkill[? queue_list[|i]].object
		var var_sprite = buttonToSkill[? queue_list[|i]].icon
		var var_lenght = other.length_of_training_queue_icon
		var var_xxx = other.training_queue_x + i * other.length_of_training_queue_icon
		var var_yyy = other.training_queue_y
		with(global.hud) {
			draw_sprite_ext(var_sprite, -1, var_xxx, var_yyy, var_lenght / sprite_get_width(var_sprite), var_lenght / sprite_get_height(var_sprite), 0, c_white, 1)
		}
	}
}

function draw_skills_buttons() {
	var hero = object_is_ancestor(object_index, obj_hero)
	for(var i = 0; i < array_length(skills); i++) {
		with(skills[i]) {
			if(!hero or lvl > 0 or global.hud.gui_display_abilities) {
				if(mouse_is_on()) {
					draw_hover_info()
				}
				var subimg = floor(icon_animation_index)
				with(global.hud.charToButton[? letter]) {
					draw_sprite_ext(other.icon, subimg, _x, _y, global.hud.spell_button_width / sprite_get_width(other.icon), global.hud.spell_button_height / sprite_get_height(other.icon), 0, -1, 1)
				}
				draw_cooldown()
			}
		}
	}
	if(hero and owner == global.player) {
		with(global.hud) {
			var xx = abilities_button._x; var yy = abilities_button._y
			var xxscale = spell_button_width / sprite_get_width(spr_abilities_button)
			var yyscale = spell_button_height / sprite_get_height(spr_abilities_button)
		}
		draw_sprite_ext(spr_abilities_button, 0, xx, yy, xxscale, yyscale, 0, -1, 1)
		if(number_of_ability_points > 0 and !global.hud.gui_display_abilities) {	
			draw_text_ext_transformed_color(xx, yy, string(number_of_ability_points), -1, -1, 4, 4, 0, c_green, c_green, c_green, c_green, 1)
		}
	}
}

function scr_dra_hud_button_with_hover_inf_building() {
	if(!global.hud.gui_display_abilities) {
		with(global.tile_selected) {
			with(selected_units[|0]) {
				var button = ds_map_find_first(buttonToSkill)
				for(var i = 0; i < ds_map_size(buttonToSkill); i++) {
					with(buttonToSkill[? button]) {
						draw_sprite_ext(icon, 0, global.hud.charToButton[?button]._x, global.hud.charToButton[?button]._y, global.hud.spell_button_width / sprite_get_width(icon), global.hud.spell_button_height / sprite_get_height(icon), 0, -1, 1)
						if(mouse_is_on()) {
							draw_hover_info()
						}
						//draw_text(global.hud.charToButton[?button]._x, global.hud.charToButton[?button]._y, info)
					}
					button = ds_map_find_next(buttonToSkill, button)
				}	
			}
		}	
	} 
}

function scr_hud_draw_gui_unit() {
	scr_draw_status_ailment_list()
	with(global.hud) {
		var var_old_align = draw_get_halign()
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_status_text()
		draw_portrait()
		draw_healthbar(HP_bar_x1, HP_bar_y1, HP_bar_x2, HP_bar_y2, other.HP / other.max_HP * 100, c_black, c_red, c_green, 0, 1, 0)
		if(other.mana != noone) {
			draw_healthbar(mana_bar_x1, mana_bar_y1, mana_bar_x2, mana_bar_y2, other.mana / other.max_mana * 100, c_black, c_blue, c_blue, 0, 1, 0)	
		}
		draw_set_halign(var_old_align)
		if(object_is_ancestor(other.object_index, obj_summon) and summon_time_left != noone) {	
			draw_healthbar(summon_time_bar_x1, summon_timer_bar_y1, summon_time_bar_x2, summon_time_bar_y2, other.summon_time_left/other.max_summon_time * 100, c_black, c_purple, c_purple, 0, 1, 0)
		}
		if(object_is_ancestor(other.object_index, obj_hero)) {
			draw_healthbar(XP_bar_x1, XP_bar_y1, XP_bar_x2, XP_bar_y2, other.experience/other.experience_to_level_up * 100, c_black, c_yellow, c_yellow, 0, 1, 0)
		}
	}
	if(object_index == obj_lille_skutt) {
		scr_dra_hud_button_with_hover_inf_lille_skutt()
	} else if(object_is_ancestor(object_index, obj_unit)) {
		draw_skills_buttons()
	}
}

function draw_cooldown() {
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	var cooldown_quotient = cooldown_current / getCooldown()
	if(cooldown_quotient > 0) {
		with(global.hud.charToButton[? letter]) {
			draw_rectangle(_x - cooldown_quotient * global.hud.spell_button_width / 2, _y - global.hud.spell_button_height / 2, _x + cooldown_quotient * global.hud.spell_button_width / 2, _y + global.hud.spell_button_height / 2, 0)
		}
	}
	draw_set_alpha(1)
}

function draw_portrait() {
	var _alpha = other.altitude == "invisible" ? 0.5 : 1
	draw_sprite_ext(other.sprite_index, 0, global.hud.hud_width/6, camera_get_view_height(view_camera[0]) - global.hud.hud_height/2, global.hud.hud_width/4 / sprite_get_width(other.sprite_index),
	global.hud.hud_height / sprite_get_height(other.sprite_index), 0, -1, _alpha)
}
		
function draw_status_text() {
	draw_text_transformed(HP_text_x, HP_text_y, "HP: " + string(round(other.HP)) + "/" + string(round(other.max_HP)), 3, 3, 0)
	draw_text_transformed(damage_text_x, damage_text_y, "Damage: " + string(round(other.damage)), 3, 3, 0)
	draw_text_transformed(accuracy_text_x, accuracy_text_y, "Accuracy: " + string(round(100 * other.accuracy)/100), 3, 3, 0)
	draw_text_transformed(evasion_text_x, evasion_text_y, "Evasion: " + string(round(100 * other.evasiveness)) + "%", 3, 3, 0)
	draw_text_transformed(damage_reduction_text_x, damage_reduction_text_y, "Armor: " + string(round(100 * other.damage_reduction)) + "%", 3, 3, 0)
	draw_text_transformed(range_text_x, range_text_y, "Range: " + string(round(100 * other.range) / 100), 3, 3, 0)
	draw_text_transformed(attack_rate_text_x, attack_rate_text_y, "Attack rate: " + string(round(100 * 1/other.attack_cost / room_speed) / 100), 3, 3, 0)
	if(other.mana != noone) {
		draw_text_transformed(mana_text_x, mana_text_y, "Mana: " + string(round(other.mana)) + "/" + string(round(other.max_mana)), 3, 3, 0)
	}
	if(other.lvl != noone) {
		draw_text_transformed(lvl_text_x, lvl_text_y, "Level: " + string(other.lvl), 3, 3, 0)
	}
}
