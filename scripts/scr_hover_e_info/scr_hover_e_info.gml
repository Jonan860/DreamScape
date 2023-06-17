// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hover_e_info(){
if(abs((mouse_x-camera_get_view_x(view_camera[0]))-other.hud_e_button_x)<other.spell_button_width/2 and abs((mouse_y-camera_get_view_y(view_camera[0]))-other.hud_e_button_y)<other.spell_button_height/2)
				{
					draw_set_color(c_green)
					draw_rectangle(camera_get_view_width(view_camera[0])-32-2*string_width(e_info),camera_get_view_height(view_camera[0])-global.hud.hud_height-32-2*string_height(e_info),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0])-global.hud.hud_height,0)
				draw_set_color(c_black)
				var old_align=draw_get_halign()
				draw_set_halign(fa_center)
				draw_text_transformed(global.hud.hud_width-string_width(e_info),global.camera_height-global.hud.hud_height-2*string_height(e_info),e_info,2,2,0)
				draw_set_halign(old_align)
				}
}