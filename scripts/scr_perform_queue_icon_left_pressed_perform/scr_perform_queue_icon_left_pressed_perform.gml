function scr_perform_queue_icon_left_pressed_perform() {
	with(global.hud) {
		var var_mouse_x_relative = mouse_x - camera_get_view_x(view_camera[0])
		var var_mouse_y_relative = mouse_y - camera_get_view_y(view_camera[0])
		var var_selected_building = global.tile_selected.selected_units[|0]
		var var_icon_queue_position_pressed = floor((var_mouse_x_relative - progress_bar_x1) / length_of_training_queue_icon)
		with(var_selected_building) {
			if(var_icon_queue_position_pressed) {
				build_progress = 0
			}
			with(var_selected_building) {
				global.player.money += buttonToSkill[? queue_list[| var_icon_queue_position_pressed]].getAmount()
				ds_list_delete(queue_list, var_icon_queue_position_pressed)
			}
		}
	}
}