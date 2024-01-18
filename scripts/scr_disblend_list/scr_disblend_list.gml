function scr_disblend_list(list) {
	for(var i = 0; i < ds_list_size(list); i += 1) {
		with(list[|i]) {
			image_blend = c_white
			image_alpha = 1
		}
	}
}
