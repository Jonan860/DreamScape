function scr_dra_hud_button_with_hover_inf_lille_skutt() {	
	draw_sprite_ext(spr_q_button, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
	scr_hover_q_info()
	draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
	scr_hover_w_info()
	draw_sprite_ext(spr_s_button, 0, other.hud_s_button_x, other.hud_s_button_y, other.spell_button_width / sprite_get_width(spr_s_button), other.spell_button_height / sprite_get_height(spr_s_button), 0, -1, 1)
	scr_hover_s_info()
}

