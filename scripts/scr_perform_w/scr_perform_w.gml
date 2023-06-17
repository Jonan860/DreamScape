function scr_perform_w() {
	if(global.tile_selected!=noone)
	{
		var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)
	if(!global.hud.gui_display_abilities)
	{
	
	
	if(var_selected==global.ida and global.ida.spell_w_cooldown_current==0 and global.ida.mana>=global.ida.spell_w_mana_cost and global.ida.spell_w_lvl>0)
	{
	
	//	if(cursor_sprite!=spr_fire_ball_cursor)
	//	{
	//cursor_sprite=spr_fire_ball_cursor
	//	}
	//	else
	//	{
	//	cursor_sprite=-1
	//	}
	//}
	global.ida.spell_w_cooldown_current=global.ida.spell_w_cooldown_max
	global.ida.mana-=global.ida.spell_w_mana_cost
	var fireball=instance_create_depth(global.ida.x,global.ida.y,id.depth,obj_katon_gokakyu_no_jutsu)
	fireball.owner=global.ida
	fireball.y-=fireball.sprite_width
	fireball.image_angle=90
	fireball.vspeed=-4
	}
	scr_perform_w_lille_skutt(var_selected)
	scr_perform_w_sorceress(var_selected)
	/// @description scr_perform_q_lille_skutt(selected_unit)
	/// @param selected_unit



	if(var_selected==global.nils and global.nils.mana>=global.nils.spell_w_mana_cost and global.nils.spell_w_cooldown_current=0 and global.nils.spell_w_lvl>0)
	{
		global.nils.spell_w_cooldown_current=global.nils.spell_w_cooldown_max
		if(!global.nils.spell_w_activated)
		{
	global.nils.mana-=global.nils.spell_w_mana_cost
	global.nils.spell_w_activated=1
	global.nils.alarm[1]=global.nils.spell_w_duration*room_speed
		}
	}
	
	scr_perform_w_unit_producing_building(var_selected)
	/*if(object_is_ancestor(var_selected.object_index,obj_unit_producing_building))
	{
		if(global.player.money>=ds_map_find_value(global.map_object_to_costs,var_selected.w_object))
		{
		
	with(var_selected)
	{
		global.player.money-=ds_map_find_value(global.map_object_to_costs,var_selected.w_object)
	ds_list_add(var_selected.queue_list,var_selected.w_object)
	exit;
	}
		}
		else
		{
		exit;
		}
	}*/

	}
	
	else
		{
	if(object_is_ancestor(var_selected.object_index,obj_hero))
	{
		with(var_selected)
		{
	if(number_of_ability_points>0)
		{
			if(2*(spell_w_lvl)+1<=lvl)
		{
		scr_level_up_w_spell()
		}
		}
		}
	}
	}



}
}
