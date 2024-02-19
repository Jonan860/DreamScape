function scr_hover_a_info(){
	if(mouse_on_button()) {
		draw_set_color(c_green)
		draw_set_color(c_black)
		var old_align = draw_get_halign()
		draw_set_halign(fa_center)
		draw_set_halign(old_align)
	}
}