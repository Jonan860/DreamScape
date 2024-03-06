if(id == global.player) {
	var old_color = draw_get_color()
	draw_set_color(c_red)
	var old_align = draw_get_halign()
	draw_set_halign(fa_left)
	draw_text_transformed(32, 32, string(money) + "$", 2, 2, 0)
	draw_set_color(old_color)
	draw_set_halign(old_align)
}