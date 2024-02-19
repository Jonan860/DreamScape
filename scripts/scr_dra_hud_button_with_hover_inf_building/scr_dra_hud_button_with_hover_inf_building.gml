function scr_dra_hud_button_with_hover_inf_building() {
	if(object_is_ancestor(object_index, obj_unit_producing_building)) {
		if(!global.hud.gui_display_abilities) {
			draw_sprite_ext(spr_q_button, 0,other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
			mouse_is_on_q()
			draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x,other.hud_w_button_y,other.spell_button_width/sprite_get_width(spr_w_button),other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
			scr_hover_w_info()
			draw_sprite_ext(spr_a_button, 0, other.hud_a_button_x, other.hud_a_button_y, other.spell_button_width / sprite_get_width(spr_a_button), other.spell_button_height / sprite_get_height(spr_a_button), 0, -1, 1)
			scr_hover_a_info()
			draw_sprite_ext(spr_s_button,0,other.hud_s_button_x,other.hud_s_button_y,other.spell_button_width/sprite_get_width(spr_s_button),other.spell_button_height/sprite_get_height(spr_s_button),0,-1,1)
			scr_hover_s_info()
		} 
	}
}
