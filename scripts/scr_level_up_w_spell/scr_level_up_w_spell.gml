// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_level_up_w_spell(){

	var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)
			global.hud.gui_display_abilities=0
spell_w_lvl+=1
if(var_selected=global.nils)
{
with(var_selected)
{
spell_w_damage_reduction=ds_list_find_value(list_spell_w_damage_reduction,spell_w_lvl-1)
global.nils.spell_w_mana_cost=ds_list_find_value(global.nils.list_spell_w_cost,spell_w_lvl-1)
}
}
if(var_selected=global.ida)
{
	with(var_selected)
	{
katon_gokakyu_no_jutsu_damage=ds_list_find_value(list_katon_gokakyu_no_jutsu_damage,spell_w_lvl-1)
spell_w_mana_cost=ds_list_find_value(list_spell_w_cost,spell_w_lvl-1)
	}
}
number_of_ability_points-=1
		}