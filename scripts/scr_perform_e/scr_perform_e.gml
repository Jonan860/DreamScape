function scr_perform_e() {
	if(global.tile_selected!=noone)
	{
var var_selected_unit=ds_list_find_value(global.tile_selected.selected_units,0)
	if(!global.hud.gui_display_abilities)
	{
	if(global.tile_selected!=noone)
	{
	if(global.tile_selected!=noone)
	{
	if(var_selected_unit==global.ida and global.ida.spell_e_lvl>0)
	{
		if(cursor_sprite!=spr_kawarimi_cursor)
		{
			window_set_cursor(cr_none)
	cursor_sprite=spr_kawarimi_cursor
		}
		else
		{
			window_set_cursor(cr_default)
		cursor_sprite=-1
		}
	}

	if(var_selected_unit==global.nils and global.nils.spell_e_lvl>0)
	{
		if(global.nils.mana>=global.nils.spell_e_mana_cost and global.nils.spell_e_cooldown_current==0)
		{
			global.nils.spell_e_cooldown_current=global.nils.spell_e_cooldown_max
		global.nils.mana-=global.nils.spell_e_mana_cost
		var var_ninjago=instance_create_layer(global.nils.x,global.nils.y,"air",obj_ninjago)
		var_ninjago.creator=global.nils
		var_ninjago.alarm[0]=global.nils.spell_e_duration*room_speed
		}
	}
	}
	}
	}
	else
	{
{
	if(object_is_ancestor(var_selected_unit.object_index,obj_hero))
	{
		with(var_selected_unit)
		{
	if(number_of_ability_points>0)
		{
			if(2*(spell_e_lvl)+1<=lvl)
		{
		scr_level_up_e_spell()
		}
		}
		}
	}
	}
	}



}
}
