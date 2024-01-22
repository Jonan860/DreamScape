

function scr_dra_hud_buttons_with_hover_inf_sorc() {
	var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
	var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
	var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
	//var var_cooldown_r_quotient=spell_r_cooldown_current/spell_r_cooldown_max

	if(global.player.sorceress_has_invisibility) {
		draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
		scr_hover_w_info_abilities()
	}
	var subimg = floor(slow_icon_animation_index);
	draw_sprite_ext(spr_q_button, subimg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height/sprite_get_height(spr_q_button), 0, -1, 1)
			
	scr_hover_q_info_abilities()
	
	if(false) {
		draw_sprite_ext(spr_e_button,0,other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
		draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		scr_hover_e_info_abilities()
	}
}

function scr_dra_hud_buttons_with_hover_inf_priest() {
	var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
	var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
	var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
	//var var_cooldown_r_quotient=spell_r_cooldown_current/spell_r_cooldown_max

	if(global.player.priest_has_dispel) {
		draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
		scr_hover_w_info_abilities()
	}
	var subimg = floor(heal_icon_animation_index)
	}
	draw_sprite_ext(spr_q_button, subimg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height/sprite_get_height(spr_q_button), 0, -1, 1)		
	scr_hover_q_info_abilities()
	if(false) {
		draw_sprite_ext(spr_e_button,0,other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
		draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		scr_hover_e_info_abilities()
	}
}

function scr_dra_hud_buttons_with_hover_inf_necro(){
	var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
	var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
	var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
	var subimg = 0
		
	draw_sprite_ext(spr_q_button, subimg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height/sprite_get_height(spr_q_button), 0, -1, 1)
			
	scr_hover_q_info_abilities()
	
	if(false) {
		draw_sprite_ext(spr_e_button,0,other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
		draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		scr_hover_e_info_abilities()
	}
}

function scr_dra_hud_buttons_with_hover_inf_banshee(){
	var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
	var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
	var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
	//var var_cooldown_r_quotient=spell_r_cooldown_current/spell_r_cooldown_max
	var subimg = floor(curse_icon_animation_index); break;
	draw_sprite_ext(spr_q_button, subimg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height/sprite_get_height(spr_q_button), 0, -1, 1)
	scr_hover_q_info_abilities()
	if(false) {
		draw_sprite_ext(spr_e_button, 0, other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
		draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
		scr_hover_e_info_abilities()
	}
}



