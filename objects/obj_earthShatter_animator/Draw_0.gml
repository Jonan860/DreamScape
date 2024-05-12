if(!jumping) {
	for(var i = 0; i < ds_list_size(impacted_tiles_list); i++) {
		with(impacted_tiles_list[|i]) {
			draw_sprite_ext(spr_earthquake_crack, -1, x, y, sprite_get_width(spr_hexagon_pink)/sprite_get_width(spr_earthquake_crack), sprite_get_height(spr_hexagon_pink) / sprite_get_height(spr_earthquake_crack), 0, c_white, 1)
		}
	}
}
