function scr_hud_draw_gui_unit() {
	scr_draw_status_ailment_list()
	with(global.hud) {
		var var_old_align = draw_get_halign()
		draw_set_halign(fa_left)
		draw_set_color(c_white)
		draw_text_transformed(HP_text_x, HP_text_y, "HP: " + string(round(other.HP)) + "/" + string(round(other.max_HP)), 3, 3, 0)
		draw_text_transformed(damage_text_x, damage_text_y, "Damage: " + string(round(other.damage)), 3, 3, 0)
		draw_text_transformed(accuracy_text_x, accuracy_text_y, "Accuracy: " + string(round(100*other.accuracy)/100), 3, 3, 0)
		draw_text_transformed(evasion_text_x, evasion_text_y, "Evasion: " + string(round(100 * other.evasiveness)) + "%", 3, 3, 0)
		draw_text_transformed(damage_reduction_text_x, damage_reduction_text_y, "Armor: " + string(round(100 * other.damage_reduction)) + "%", 3, 3, 0)
		draw_text_transformed(range_text_x, range_text_y, "Range: " + string(round(100 * other.range) / 100), 3, 3, 0)
		draw_text_transformed(attack_rate_text_x, attack_rate_text_y, "Attack rate: " + string(round(100 * 1/other.attack_cost / room_speed) / 100), 3, 3, 0)
		draw_set_halign(var_old_align)
		var _alpha = other.altitude == "invisible" ? 1 : 0.5
			draw_sprite_ext(other.sprite_index, 0, global.hud.hud_width/6, camera_get_view_height(view_camera[0]) - global.hud.hud_height/2, global.hud.hud_width/4 / sprite_get_width(other.sprite_index),
			global.hud.hud_height / sprite_get_height(other.sprite_index), 0, -1, _alpha)
	} 
	draw_healthbar(HP_bar_x1, HP_bar_y1, HP_bar_x2, HP_bar_y2, other.HP / other.max_HP * 100, c_black, c_red, c_green, 0, 1, 0)
}