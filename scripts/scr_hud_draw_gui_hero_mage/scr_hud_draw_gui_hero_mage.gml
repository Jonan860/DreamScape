// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hud_draw_gui_hero_mage(){
if(object_is_ancestor(object_index,obj_hero) or object_is_ancestor(object_index,obj_mage))
	{
		with(global.hud)
		{
			if(object_is_ancestor(other.object_index,obj_hero))
			{
			draw_set_color(c_white)
			var var_align_store=draw_get_halign()
			draw_set_halign(fa_center)
	draw_text_transformed(lvl_text_x,lvl_text_y,"Level: "+string(other.lvl),3,3,0)
			draw_set_halign(var_align_store)
			}
			var var_old_align=draw_get_halign()
		draw_set_halign(fa_left)
draw_set_color(c_white)
		draw_text_transformed(mana_text_x,mana_text_y,"Mana: "+string(round(other.mana))+"/"+string(round(other.max_mana)),3,3,0)
		draw_set_halign(var_old_align)
		//draw_sprite_ext(other.sprite_index,0,global.hud.hud_width/6,camera_get_view_height(view_camera[0])-global.hud.hud_height/2,(global.hud.hud_width/4)/sprite_get_width(other.sprite_index),(global.hud.hud_height/4)/sprite_get_height(other.sprite_index),0,-1,1)
	
	
draw_healthbar(mana_bar_x1,mana_bar_y1,mana_bar_x2,mana_bar_y2,other.mana/other.max_mana*100,c_black,c_blue,c_blue,0,1,0)
	
	
		}
		
}
}