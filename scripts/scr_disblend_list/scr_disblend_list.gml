function scr_disblend_list(list) {
	for(var i = 0; i < array_length(list); i++) {
		with(list[i]) {
			imageBlend = c_white
			image_alpha = 1
		}
	}
}
