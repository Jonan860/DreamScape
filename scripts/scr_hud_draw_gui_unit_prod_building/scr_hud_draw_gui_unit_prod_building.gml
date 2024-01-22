function scr_hud_draw_gui_unit_prod_building() {
	if(!ds_list_empty(queue_list)) {
		var var_object = queue_list[|0]	
		var var_build_time = ds_map_find_value(global.map_objects_to_build_time, var_object)
		draw_healthbar(other.progress_bar_x1, other.progress_bar_y1, other.progress_bar_x2, other.progress_bar_y2,build_progress / var_build_time * 100, c_black, c_lime, c_green, 0, 1, 0)
		for(var i = 0; i <= ds_list_size(queue_list) - 1; i += 1) {
			var var_object = queue_list[|i]	
			switch(var_object) {
				case q_object : var var_sprite = spr_q_button; break;
				case w_object : var var_sprite = spr_w_button; break;
				case a_object : var var_sprite = spr_a_button; break;
				case s_object : var var_sprite = spr_s_button; break;
			}
			var var_lenght = other.length_of_training_queue_icon
			var var_xxx = other.training_queue_x + i * other.length_of_training_queue_icon
			var var_yyy = other.training_queue_y
			with(global.hud) {
				draw_sprite_ext(var_sprite, -1, var_xxx, var_yyy, var_lenght / sprite_get_width(var_sprite), var_lenght / sprite_get_height(var_sprite), 0, c_white, 1)
			}
		}
	}
}
