function scr_draw_hud_button_and_hover_footman() {
	var _alpha = global.player.footman_has_defend_upgrade ? 1 : 0.5
	draw_sprite_ext(spr_defend_icon, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, _alpha)
}
