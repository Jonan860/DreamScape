
function scr_blend_path() {
	for(var i = 0; i < ds_list_size(path) - 1; i++) {
		var tile2 = ds_list_find_value(path, i)
		tile2.image_blend = c_teal
		tile2.image_alpha = i == 0 ? 1 : 0.5
	}
}
