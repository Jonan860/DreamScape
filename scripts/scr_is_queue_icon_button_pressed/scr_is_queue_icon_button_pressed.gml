function scr_is_queue_icon_button_pressed() {
	with(global.hud) {
		if(global.tile_selected != noone) {
			var var_building = global.tile_selected.selected_units[|0]
			with(var_building) {
				if(object_is_ancestor(object_index, obj_unit_producing_building)) {
					if(!ds_list_empty(queue_list)) {
						var var_queue_amount = ds_list_size(queue_list)
						var mouse_x_relative = mouse_x - camera_get_view_x(view_camera[0])
						var mouse_y_relative = mouse_y - camera_get_view_y(view_camera[0])
						var var_is_queue_pressed = (other.training_queue_x - 1/2 * other.length_of_training_queue_icon < mouse_x_relative and mouse_x_relative < other.training_queue_x - 1/2 * other.length_of_training_queue_icon + var_queue_amount * other.length_of_training_queue_icon and other.training_queue_y - 1/2 * other.length_of_training_queue_icon < mouse_y_relative and mouse_y_relative < other.training_queue_y - 1/2 * other.length_of_training_queue_icon + other.length_of_training_queue_icon)
						return var_is_queue_pressed
					}
				}
			}
		}
	}
	return 0
}