// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_level_up_e_spell(){
var var_selected=ds_list_find_value(global.tile_selected.selected_units,0)
global.hud.gui_display_abilities=0
spell_e_lvl+=1
number_of_ability_points-=1
if(var_selected.object_index=obj_ida)
{
spell_e_cooldown_max=ds_list_find_value(list_spell_e_cooldown_max,spell_e_lvl-1)
	spell_e_mana_cost=ds_list_find_value(list_spell_e_cost,spell_e_lvl-1)
}
if(var_selected.object_index=obj_nils)
{
	spell_e_damage_multiplier=ds_list_find_value(list_spell_e_damage_multiplier,spell_e_lvl-1)
	spell_e_mana_cost=ds_list_find_value(list_spell_e_cost,spell_e_lvl-1)
}
scr_update_info_text()
}