function scr_draw_hud_button_and_hover_mage(var_selected_unit) {
	if(object_is_ancestor(var_selected_unit.object_index, obj_mage) and var_selected_unit.owner == global.player) {
		with(var_selected_unit) {
			var var_cooldown_q_quotient = spell_q_cooldown_current / spell_q_cooldown_max
			var var_cooldown_w_quotient = spell_w_cooldown_current/spell_w_cooldown_max
			var var_cooldown_e_quotient = spell_e_cooldown_current/spell_e_cooldown_max
			var var_cooldown_r_quotient = spell_r_cooldown_current/spell_r_cooldown_max
		
			draw_sprite_ext(spr_q_button, 0, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
			if(spell_q.lvl > 0) {
					if(abs((mouse_x-camera_get_view_x(view_camera[0]))-other.hud_q_button_x) < other.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - other.hud_q_button_y) < other.spell_button_height/2) {
						draw_set_color(c_green)
						//BB//draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(q_info),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(q_info),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
						draw_set_color(c_black)
						var old_align=draw_get_halign()
						draw_set_halign(fa_center)
						draw_text_transformed(global.hud.hud_width-string_width(q_info),global.camera_height-global.hud.hud_height-2*string_height(q_info),q_info,2,2,0)
						draw_set_halign(old_align)
					
					switch(var_selected_unit.object_index) {
						case obj_sorceress : var subImg = floor(slow_icon_animation_index); break;
						case obj_banshee : var subImg = floor(curse_icon_animation_index); break;
						case obj_priest : var subImg = floor(heal_icon_animation_index); break;
						default : var subImg = 0; break;
					}
						draw_sprite_ext(spr_q_button, subImg, other.hud_q_button_x, other.hud_q_button_y, other.spell_button_width / sprite_get_width(spr_q_button), other.spell_button_height / sprite_get_height(spr_q_button), 0, -1, 1)
					}
					draw_set_color(c_black)
					draw_set_alpha(0.5)
					if(var_cooldown_q_quotient > 0) {
						draw_rectangle(other.hud_q_button_x-var_cooldown_q_quotient*other.spell_button_width/2,other.hud_q_button_y-other.spell_button_height/2,other.hud_q_button_x+var_cooldown_q_quotient*other.spell_button_width/2,other.hud_q_button_y+other.spell_button_height/2,0)
					}
					draw_set_alpha(1)	
				}
				if(spell_w.lvl > 0) {
					if(abs((mouse_x-camera_get_view_x(view_camera[0])) - other.hud_w_button_x) < other.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - other.hud_w_button_y) < other.spell_button_height/2) {
						draw_set_color(c_green)
						//BB//draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(w_info),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(w_info),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
						draw_set_color(c_black)
						draw_text_transformed(global.hud.hud_width-string_width(w_info),global.camera_height-global.hud.hud_height-2*string_height(w_info),w_info,2,2,0)
					}
					draw_sprite_ext(spr_w_button,0,other.hud_w_button_x,other.hud_w_button_y,other.spell_button_width/sprite_get_width(spr_w_button),other.spell_button_height/sprite_get_height(spr_w_button),0,-1,1)
					draw_set_color(c_black)
					draw_set_alpha(0.5)
					if(var_cooldown_w_quotient > 0) {
						draw_rectangle(other.hud_w_button_x-var_cooldown_w_quotient*other.spell_button_width/2,other.hud_w_button_y-other.spell_button_height/2,other.hud_w_button_x+var_cooldown_w_quotient*other.spell_button_width/2,other.hud_w_button_y+other.spell_button_height/2,0)
					}
					draw_set_alpha(1)
				}
				if(spell_e.lvl > 0) {
					draw_sprite_ext(spr_e_button, 0, other.hud_e_button_x, other.hud_e_button_y, other.spell_button_width / sprite_get_width(spr_e_button), other.spell_button_height / sprite_get_height(spr_e_button), 0, -1, 1)
					draw_set_color(c_black)
					draw_set_alpha(0.5)
					if(var_cooldown_e_quotient > 0) {
						draw_rectangle(other.hud_e_button_x - var_cooldown_e_quotient * other.spell_button_width/2, other.hud_e_button_y - other.spell_button_height/2, other.hud_e_button_x + var_cooldown_e_quotient * other.spell_button_width/2, other.hud_e_button_y + other.spell_button_height/2, 0)
					}
					draw_set_alpha(1)
				}		
				if(spell_r.lvl > 0) {
					draw_sprite_ext(spr_r_button, 0, other.hud_r_button_x, other.hud_r_button_y, other.spell_button_width / sprite_get_width(spr_r_button), other.spell_button_height / sprite_get_height(spr_r_button), 0, -1, 1)
					draw_set_color(c_black)
					draw_set_alpha(0.5)
					if(var_cooldown_e_quotient > 0) {
						draw_rectangle(other.hud_r_button_x - var_cooldown_r_quotient * other.spell_button_width/2, other.hud_r_button_y - other.spell_button_height/2, other.hud_r_button_x + var_cooldown_r_quotient * other.spell_button_width/2, other.hud_r_button_y + other.spell_button_height/2, 0)
					}
					draw_set_alpha(1)
				}
			}
		}
}