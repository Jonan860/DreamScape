function scr_disblend_list(list) {
	for(var i = 0; i < array_length(list); i += 1) {
		with(list[i]) {
			imageBlend = c_white
			image_alpha = 1
		}
	}
}
