/// scr_get_spell_shield_damage_reduction(victim)
/// @param victim
function scr_get_spell_shield_damage_reduction(argument0) {

	var var_victim=argument0
	if(global.nils.spell_w_activated)
	{
	if(scr_is_enemies(var_victim,global.nils)==0)
	{
	if(scr_get_distance(var_victim.tile,global.nils.tile)<=global.nils.spell_w_range)	
	{
	return global.nils.spell_w_damage_reduction exit;
	}
	}
	}
	return 0


}
