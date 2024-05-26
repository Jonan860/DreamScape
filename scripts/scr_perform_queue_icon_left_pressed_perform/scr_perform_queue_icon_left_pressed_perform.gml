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
			//var var_new_queue = ds_list_create()
			//for(var i = 0; i < ds_list_size(var_selected_building.queue_list); i += 1) {
			//	with(var_selected_building) {
			//		var skill = buttonToSkill[? queue_list[|i]]
			//	}
			//	if(i != var_icon_queue_position_pressed - 1) {
			//		ds_list_add(var_new_queue, skill.letter)
			//	} else {
			//		global.player.money += skill.getAmount()
			//	}
			//}
			with(var_selected_building) {
				global.player.money += buttonToSkill[? queue_list[| var_icon_queue_position_pressed]].getAmount()
				ds_list_delete(queue_list, var_icon_queue_position_pressed)
			}
			//ds_list_copy(var_selected_building.queue_list, var_new_queue)
			//ds_list_destroy(var_new_queue)
		}
	}
}