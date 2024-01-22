if(time_until_frost_nova_sec > 0) {
	var varXscale = (1 + 1 * (frost_nova_total_time_sec - time_until_frost_nova_sec) / frost_nova_total_time_sec) * sprite_get_width(spr_hexagon_pink) / sprite_get_width(spr_frost_nova_bomb)
	var varYscale = (1 + 1 * (frost_nova_total_time_sec - time_until_frost_nova_sec) / frost_nova_total_time_sec) * sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_frost_nova_bomb)
	var varRotation = time_until_frost_nova_sec * 360 % 360
	draw_sprite_ext(spr_frost_nova_bomb, 0, frost_nova_target.x, frost_nova_target.y, varXscale , varYscale , varRotation , c_white, 0.8)
} else if(time_until_frost_nova_after_effect_end_sec > 0) {
	with(frost_nova_target) {
		var varSubimg = ceil((other.total_time_frost_nova_after_effect_end_sec - other.time_until_frost_nova_after_effect_end_sec) * 45)
		var varXscale2 = sprite_get_width(spr_hexagon_pink) / sprite_get_width(spr_frost_nova_ice_spikes)
		var varYscale2 = sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_frost_nova_ice_spikes)
		draw_sprite_ext(spr_frost_nova_ice_spikes, varSubimg , x, y, varXscale2, varYscale2, 0, c_white, 0.8)
		for(var i = 0; i <= ds_list_size(list_of_neighbours) - 1; i += 1)	{
			var var_tile = list_of_neighbours[|i]
			if(var_tile != noone) {
				var subimg =  ceil((other.total_time_frost_nova_after_effect_end_sec - other.time_until_frost_nova_after_effect_end_sec) * 45)
				var varXscale3 = sprite_get_width(spr_hexagon_pink) / 2 / sprite_get_width(spr_frost_nova_ice_spikes)
				var varYscale3 = sprite_get_height(spr_hexagon_pink)/2/sprite_get_height(spr_frost_nova_ice_spikes)
				draw_sprite_ext(spr_frost_nova_ice_spikes, subimg, var_tile.x, var_tile.y, varXscale3, varYscale3, 0, c_white, 0.8)
			}
		}

	}
}