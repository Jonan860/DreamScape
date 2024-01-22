
if(global.game.phase == "battle") {
	draw_set_color(c_olive)
	var var_camera_height = camera_get_view_height(view_camera[0])
	var var_camera_width = camera_get_view_width(view_camera[0])
	draw_rectangle(0, var_camera_height - hud_height, var_camera_width, var_camera_height, 0)
	scr_draw_hud_buttons_with_hover_info()
	if(global.tile_selected != noone) {
		var var_selected_unit = global.tile_selected.selected_units[|0]
		with(var_selected_unit) {
			hud_draw_gui()
			if(object_is_ancestor(object_index, obj_summon) and summon_time_left != noone) {
				with(global.hud) {	
					draw_healthbar(summon_time_bar_x1, summon_timer_bar_y1, summon_time_bar_x2, summon_time_bar_y2, other.summon_time_left/other.max_summon_time * 100, c_black, c_purple, c_purple, 0, 1, 0)
				}
			}

			if(object_is_ancestor(object_index, obj_hero)) {
				with(global.hud) {
					draw_healthbar(XP_bar_x1, XP_bar_y1, XP_bar_x2, XP_bar_y2, other.experience/other.experience_to_level_up * 100, c_black, c_yellow, c_yellow, 0, 1, 0)
				}
			}
		}	
	
	}
}
