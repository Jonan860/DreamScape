// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_dra_hud_buttons_with_hover_inf_mage(var_selected_unit){
	if(object_is_ancestor(var_selected_unit.object_index, obj_mage)) {
			with(var_selected_unit) {
				var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
				var var_cooldown_w_quotient = spell_w_cooldown_current / spell_w_cooldown_max
				var var_cooldown_e_quotient = spell_e_cooldown_current / spell_e_cooldown_max
				//var var_cooldown_r_quotient=spell_r_cooldown_current/spell_r_cooldown_max
			}
	with(var_selected_unit)	{
		if((object_index == obj_sorceress and global.player.sorceress_has_invisibility) or (object_index == obj_priest and global.player.priest_has_dispel)) {
			draw_sprite_ext(spr_w_button, 0, other.hud_w_button_x, other.hud_w_button_y, other.spell_button_width / sprite_get_width(spr_w_button), other.spell_button_height / sprite_get_height(spr_w_button), 0, -1, 1)
			scr_hover_w_info_abilities()
		}
			switch(var_selected_unit.object_index) {
				case obj_sorceress : var subimg = floor(slow_icon_animation_index); break;
				case obj_banshee : var subimg = floor(curse_icon_animation_index); break;
				case obj_priest : var subimg = floor(heal_icon_animation_index); break;
				default : var subimg = 0
			}
			draw_sprite_ext(spr_q_button, subimg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height/sprite_get_height(spr_q_button), 0, -1, 1)
			
			scr_hover_q_info_abilities()
	
			if(false) {
				draw_sprite_ext(spr_e_button,0,other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
				draw_text_ext_transformed_color(other.hud_e_button_x, other.hud_e_button_y, string(spell_e_lvl), -1, -1, 4, 4, 0, c_black, c_black, c_black, c_white, 1)
				scr_hover_e_info_abilities()
			}
		}
	}
}