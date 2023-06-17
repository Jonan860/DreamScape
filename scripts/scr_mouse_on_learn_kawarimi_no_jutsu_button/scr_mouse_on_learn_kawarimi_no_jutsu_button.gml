function scr_mouse_on_learn_kawarimi_no_jutsu_button() {
	if(learn_button_width+learn_spell_q_button_width+learn_spell_w_button_width<mouse_x and mouse_x<learn_button_width+learn_spell_q_button_width+learn_spell_w_button_width+learn_spell_e_button_width and 0<mouse_y and mouse_y<learn_spell_e_button_height)
	{
	return 1
	}
	else
	return 0


}
