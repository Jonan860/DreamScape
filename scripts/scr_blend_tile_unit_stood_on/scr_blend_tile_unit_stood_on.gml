function scr_blend_tile_unit_stood_on() {
	if(array_length(path) >= 1) {
		var tile_to_be_removed = path[array_length(path) - 1]
		tile_to_be_removed.imageBlend = c_white
		tile_to_be_removed.image_alpha = 1
		array_delete(path, array_length(path) - 1, 1)
	}
}
