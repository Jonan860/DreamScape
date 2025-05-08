if(!jumping) {
	for(var i = 0; i < array_length(impacted_tiles_list); i++) {
		with(impacted_tiles_list[i]) {
			draw_sprite_ext(spr_earthquake_crack, -1, _x, _y, sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_earthquake_crack), sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_earthquake_crack), 0, c_white,  other.time_until_earthshatter_gone / other.total_time_until_earthshatter_gone)
		}
	}
}
