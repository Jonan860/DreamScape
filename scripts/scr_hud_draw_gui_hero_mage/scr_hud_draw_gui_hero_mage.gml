

function scr_hud_draw_gui_unit_prod_building() {
	if(!ds_list_empty(queue_list)) {
		var var_object = buttonToSkill[?queue_list[|0]].object	
		var var_build_time = ds_map_find_value(global.map_objects_to_build_time, var_object)
		draw_healthbar(other.progress_bar_x1, other.progress_bar_y1, other.progress_bar_x2, other.progress_bar_y2,build_progress / var_build_time * 100, c_black, c_lime, c_green, 0, 1, 0)
		draw_queue()
	}
}

function draw_queue() {
		for(var i = 0; i <= ds_list_size(queue_list) - 1; i += 1) {
			var var_object = buttonToSkill[? queue_list[|i]].object
			var var_sprite = buttonToSkill[? queue_list[|i]].icon
			//switch(var_object) {
			//	case q_object : var var_sprite = spr_q_button; break;
			//	case w_object : var var_sprite = spr_w_button; break;
			//	case a_object : var var_sprite = spr_a_button; break;
			//	case s_object : var var_sprite = spr_s_button; break;
			//}
			var var_lenght = other.length_of_training_queue_icon
			var var_xxx = other.training_queue_x + i * other.length_of_training_queue_icon
			var var_yyy = other.training_queue_y
			with(global.hud) {
				draw_sprite_ext(var_sprite, -1, var_xxx, var_yyy, var_lenght / sprite_get_width(var_sprite), var_lenght / sprite_get_height(var_sprite), 0, c_white, 1)
			}
		}
}

function scr_hud_draw_gui_unit() {
	scr_draw_status_ailment_list()
	with(global.hud) {
		draw_status_text()
		draw_portrait()
		draw_healthbar(HP_bar_x1, HP_bar_y1, HP_bar_x2, HP_bar_y2, other.HP / other.max_HP * 100, c_black, c_red, c_green, 0, 1, 0)
		if(other.mana != noone) {
			draw_healthbar(mana_bar_x1, mana_bar_y1, mana_bar_x2, mana_bar_y2, other.mana / other.max_mana * 100, c_black, c_blue, c_blue, 0, 1, 0)	
		}
	}
}

function draw_portrait() {
	var _alpha = other.altitude == "invisible" ? 0.5 : 1
	draw_sprite_ext(other.sprite_index, 0, global.hud.hud_width/6, camera_get_view_height(view_camera[0]) - global.hud.hud_height/2, global.hud.hud_width/4 / sprite_get_width(other.sprite_index),
	global.hud.hud_height / sprite_get_height(other.sprite_index), 0, -1, _alpha)
}

		
function draw_status_text() {
	var var_old_align = draw_get_halign()
	draw_set_halign(fa_left)
	draw_set_color(c_white)
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
	draw_set_halign(var_old_align)
}
