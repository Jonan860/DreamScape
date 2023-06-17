/// @description scr_dra_hud_button_with_hover_inf_building(selected_unit)
/// @param selected_unit
function scr_dra_hud_button_with_hover_inf_building(argument0) {
	var var_selected_unit=argument0
	if(object_is_ancestor(var_selected_unit.object_index,obj_unit_producing_building))
	{
	with(var_selected_unit)
		{
		//var var_cooldown_q_quotient=q_build_progress/q_build_time
		//var var_cooldown_w_quotient=w_build_progress/q_build_time
		// var var_cooldown_e_quotient=spell_e_cooldown_current/spell_e_cooldown_max
		if(!global.hud.gui_display_abilities)
		{
	draw_sprite_ext(spr_q_button,0,other.hud_q_button_x,other.hud_q_button_y,other.spell_button_width/sprite_get_width(spr_q_button),other.spell_button_height/sprite_get_height(spr_q_button),0,-1,1)
			scr_hover_q_info()
			/*if(abs((mouse_x-camera_get_view_x(view_camera[0]))-other.hud_q_button_x)<other.spell_button_width/2 and abs((mouse_y-camera_get_view_y(view_camera[0]))-other.hud_q_button_y)<other.spell_button_height/2)
				{
					draw_set_color(c_green)
					draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(q_info),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(q_info),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
				draw_set_color(c_black)
				var old_align=draw_get_halign()
				draw_set_halign(fa_center)
				draw_text_transformed(global.hud.hud_width-string_width(q_info),global.camera_height-global.hud.hud_height-2*string_height(q_info),q_info,2,2,0)
				draw_set_halign(old_align)
				}*/
			/*draw_set_color(c_black)
			draw_set_alpha(0.5)
			if(var_cooldown_q_quotient>0)
			{
			draw_rectangle(other.hud_q_button_x-var_cooldown_q_quotient*other.spell_button_width/2,other.hud_q_button_y-other.spell_button_height/2,other.hud_q_button_x+var_cooldown_q_quotient*other.spell_button_width/2,other.hud_q_button_y+other.spell_button_height/2,0)
			}
			draw_set_alpha(1)
		
		*/
	draw_sprite_ext(spr_w_button,0,other.hud_w_button_x,other.hud_w_button_y,other.spell_button_width/sprite_get_width(spr_w_button),other.spell_button_height/sprite_get_height(spr_w_button),0,-1,1)
	scr_hover_w_info()
	draw_sprite_ext(spr_a_button,0,other.hud_a_button_x,other.hud_a_button_y,other.spell_button_width/sprite_get_width(spr_a_button),other.spell_button_height/sprite_get_height(spr_a_button),0,-1,1)
	scr_hover_a_info()
	draw_sprite_ext(spr_s_button,0,other.hud_s_button_x,other.hud_s_button_y,other.spell_button_width/sprite_get_width(spr_s_button),other.spell_button_height/sprite_get_height(spr_s_button),0,-1,1)
	scr_hover_s_info()
	/*draw_set_color(c_black)
			draw_set_alpha(0.5)
			if(var_cooldown_w_quotient>0)
			{
			draw_rectangle(other.hud_w_button_x-var_cooldown_w_quotient*other.spell_button_width/2,other.hud_w_button_y-other.spell_button_height/2,other.hud_w_button_x+var_cooldown_w_quotient*other.spell_button_width/2,other.hud_w_button_y+other.spell_button_height/2,0)
			}
			draw_set_alpha(1)
			*/
		
		
	/*draw_sprite_ext(spr_e_button,0,other.hud_e_button_x,other.hud_e_button_y,other.spell_button_width/sprite_get_width(spr_e_button),other.spell_button_height/sprite_get_height(spr_e_button),0,-1,1)
			draw_set_color(c_black)
			draw_set_alpha(0.5)
			if(var_cooldown_e_quotient>0)
			{
			draw_rectangle(other.hud_e_button_x-var_cooldown_e_quotient*other.spell_button_width/2,other.hud_e_button_y-other.spell_button_height/2,other.hud_e_button_x+var_cooldown_e_quotient*other.spell_button_width/2,other.hud_e_button_y+other.spell_button_height/2,0)
			}
			draw_set_alpha(1)
	*/		
		
	//draw_sprite_ext(spr_abilities_button,0,other.hud_abilities_x,other.hud_abilities_y,other.spell_button_width/sprite_get_width(spr_abilities_button),other.spell_button_height/sprite_get_height(spr_abilities_button),0,-1,1)
		}
		else
		{		
	/*draw_sprite_ext(spr_w_button,0,other.hud_w_button_x,other.hud_w_button_y,other.spell_button_width/sprite_get_width(spr_w_button),other.spell_button_height/sprite_get_height(spr_w_button),0,-1,1)
		draw_text_ext_transformed_color(other.hud_w_button_x,other.hud_w_button_y,string(spell_w_lvl),-1,-1,4,4,0,c_black,c_black,c_black,c_white,1)
	draw_sprite_ext(spr_q_button,0,other.hud_q_button_x,other.hud_q_button_y,other.spell_button_width/sprite_get_width(spr_q_button),other.spell_button_height/sprite_get_height(spr_q_button),0,-1,1)
			draw_text_ext_transformed_color(other.hud_q_button_x,other.hud_q_button_y,string(spell_q_lvl),-1,-1,4,4,0,c_black,c_black,c_black,c_white,1)
	draw_sprite_ext(spr_e_button,0,other.hud_e_button_x,other.hud_e_button_y,other.spell_button_width/sprite_get_width(spr_e_button),other.spell_button_height/sprite_get_height(spr_e_button),0,-1,1)
			draw_text_ext_transformed_color(other.hud_e_button_x,other.hud_e_button_y,string(spell_e_lvl),-1,-1,4,4,0,c_black,c_black,c_black,c_white,1)
	draw_sprite_ext(spr_abilities_button,0,other.hud_abilities_x,other.hud_abilities_y,other.spell_button_width/sprite_get_width(spr_abilities_button),other.spell_button_height/sprite_get_height(spr_abilities_button),0,-1,1)
		draw_text_ext_transformed_color(other.hud_abilities_x,other.hud_abilities_y,string(number_of_ability_points),-1,-1,4,4,0,c_black,c_black,c_black,c_white,1)
		*/}
	}
	}


}
