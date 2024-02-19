function scr_dra_hud_buttons_with_hover_inf_priest() {
	if(learned) {
		draw_sprite_ext(button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
		scr_hover_w_info_abilities()
	}
	var subimg = floor(icon_animation_index)
	draw_sprite_ext(button, subimg, button_x, button_y, button_width / sprite_get_width(button), button_height/sprite_get_height(icon), 0, -1, 1)		
	if(mouse_is_on_q()) {
		scr_hover_q_info_abilities()
	}
}