// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_hud_draw_gui_unit_prod_building(){
	if(object_is_ancestor(object_index,obj_unit_producing_building))
	{
		if(ds_list_size(queue_list)>0)
		{
		var var_object=ds_list_find_value(queue_list,0)	
		
		var var_build_time=ds_map_find_value(global.map_objects_to_build_time,var_object)
draw_healthbar(other.progress_bar_x1,other.progress_bar_y1,other.progress_bar_x2,other.progress_bar_y2,build_progress/var_build_time*100,c_black,c_lime,c_green,0,1,0)
		for(i=0;i<=ds_list_size(queue_list)-1;i+=1)
		{
		var var_object=ds_list_find_value(queue_list,i)	
		if(var_object=q_object)
		{
		var var_sprite=spr_q_button
		}
		if(var_object=w_object)
		{
		var var_sprite=spr_w_button
		}
		
		if(var_object=a_object)
		{
		var var_sprite=spr_a_button
		}
		if(var_object=s_object)
		{
		var var_sprite=spr_s_button
		}
		var var_lenght=other.length_of_training_queue_icon
		var var_xxx=other.training_queue_x+i*other.length_of_training_queue_icon
		var var_yyy=other.training_queue_y
	//	var var_xscale
		with(global.hud)/// to keep above
		{
		draw_sprite_ext(var_sprite,-1,var_xxx,var_yyy,var_lenght/sprite_get_width(var_sprite),var_lenght/sprite_get_height(var_sprite),0,c_white,1)
		}
	}
		}
	}
}