// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_right_pressed_player_unit(var_ground_unit,var_selected_unit,clicked_tile){
if(!scr_is_enemies(var_selected_unit,var_ground_unit) and var_ground_unit.owner=global.player)
	{
	if(var_selected_unit==global.ida)
		{
		if(cursor_sprite=spr_kawarimi_cursor and global.ida.mana>=global.ida.spell_e_mana_cost and global.ida.spell_e_lvl>0)
		{
			if(unit_to_kawarimi1=noone and global.ida.mana>=global.ida.spell_e_mana_cost)
			{
			var var_unit_to_kawarimi1=ds_list_find_value(clicked_tile.grounds_list,0)
			if(object_is_ancestor(var_unit_to_kawarimi1.object_index,obj_unit))
			{
			unit_to_kawarimi1=var_unit_to_kawarimi1
			}
			}
		else if(global.ida.mana>=global.ida.spell_e_mana_cost and global.ida.spell_e_cooldown_current==0)
		{	
		var var_unit_to_kawarimi2=ds_list_find_value(clicked_tile.grounds_list,0)
		if(object_is_ancestor(var_unit_to_kawarimi2.object_index,obj_unit))
			{
			unit_to_kawarimi2=var_unit_to_kawarimi2
			
		if(unit_to_kawarimi1!=unit_to_kawarimi2)
		{
			global.ida.spell_e_cooldown_current=global.ida.spell_e_cooldown_max
			global.ida.mana-=global.ida.spell_e_mana_cost
			global.ida.action_bar=0
		scr_swap_tile(unit_to_kawarimi1,unit_to_kawarimi2)
		}
		unit_to_kawarimi1=noone
		unit_to_kawarimi2=noone
		}
		}
		}
		
		//else
		//global.tile_selected.selected_unit.phase="hunt"
	//global.tile_selected.selected_unit.target=var_ground_unit
		}
	
		if(var_selected_unit==global.nils)
		{
		if(cursor_sprite=spr_holy_light_cursor)
		{
		if(scr_get_distance(global.tile_selected,clicked_tile)<=global.nils.spell_q_range and global.nils.mana>=global.nils.spell_q_mana_cost and global.nils.spell_q_cooldown_current=0)
		{
			global.nils.mana-=global.nils.spell_q_mana_cost
			global.nils.spell_q_cooldown_current=global.nils.spell_q_cooldown_max
		scr_holy_light_unit(global.nils,ds_list_find_value(clicked_tile.grounds_list,0))
		}
		}
		else
		 {
	//	var_selected_unit.phase="hunt"
	//var_selected_unit.target=var_ground_unit
		 }
		}
		 if(cursor_sprite=spr_invisibility_cursor)
		{
		if(var_selected_unit.spell_w_cooldown_current==0 and scr_get_distance(var_selected_unit,clicked_tile)<=var_selected_unit.spell_w_range and var_selected_unit.mana>=var_selected_unit.spell_w_mana_cost)
		{
			scr_cast_invisible_on_unit(var_ground_unit)
		with(var_selected_unit)
		{
		mana-=spell_w_mana_cost
			spell_w_cooldown_current=spell_w_cooldown_max
		}
		}
		}
		if(var_selected_unit.object_index=obj_priest)
		{
		if(cursor_sprite=spr_heal_cursor and var_selected_unit.mana>var_selected_unit.spell_q_mana_cost)
		{
		var_selected_unit.phase="healing"
		var_selected_unit.target=var_ground_unit
		}
		}
	}
}