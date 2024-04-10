if(room = map) {
	if(wave_number <= ds_list_size(enemies_wave_length_list) - 1) {
		var var_color = draw_get_color()
		draw_set_color(c_white)
		draw_text_ext_transformed(camera_get_view_width(view_camera[0]) / 10, camera_get_view_height(view_camera[0]) / 30, "Next wave: " + string(floor(enemies_wave_length_list[|wave_number] - enemies_wave_timer)), 128, 128, 2, 2, 0)
		draw_set_color(var_color)
	}
	if(global.nils.eaten) {
		var x1 = camera_get_view_width(view_camera[0]) - camera_get_view_width(view_camera[0]) / 4
		var y1 = camera_get_view_height(view_camera[0]) / 16
		var x2 = camera_get_view_width(view_camera[0]) - camera_get_view_width(view_camera[0]) / 16
		var y2 = camera_get_view_height(view_camera[0]) / 16 + camera_get_view_height(view_camera[0]) / 32
		var amount = global.nils.HP / global.nils.max_HP * 100
		draw_healthbar(x1, y1, x2, y2, amount, c_black, c_red, c_green, 0, 0, 0)
	}

	if(phase == "dialogue") {
		with(global.dialogue) {
			var var_upper_left_corner_x = camera_get_view_x(view_camera[0])
			var var_upper_left_corner_y = camera_get_view_y(view_camera[0])
			string_to_draw = list_of_dialogue_strings[|dialogue_number]
			draw_sprite(spr_dialogue_box, -1, x, y)
			var var_oldvalign = draw_get_valign()
			var var_oldhalign = draw_get_halign()
			draw_set_valign(fa_middle)
			draw_set_halign(fa_center)
			var var_string_height = string_height("hej")
			var var_string_width = sprite_get_width(spr_dialogue_box)
			draw_text_ext_transformed(x, y, string_to_draw, var_string_height, var_string_width / 2, 2, 2, 0)
			draw_set_valign(var_oldvalign)
			draw_set_halign(var_oldhalign)
			var var_speaker = list_of_dialogue_speaker[|dialogue_number]
			with(var_speaker) {
				draw_self()
			}
			var var_list_of_audience = list_of_list_of_audience[|dialogue_number]
			var var_number_of_audiences = ds_list_size(var_list_of_audience)
			for(var i = 0; i <= var_number_of_audiences - 1; i += 1) {
				var var_audience = var_list_of_audience[|i]
				with(var_audience) {	
					image_blend = c_gray
					draw_self()
					image_blend = c_white
				}
			}
		}
	}

}


