// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_apply_upgrades_on_new_unit(var_unit){
with(var_unit)
{
if(object_index=obj_sorceress)
{
	
	if(global.player.sorceress_has_invisibility)
	{
max_mana*=global.invisibililty_upgrade_struct.max_mana_multiplicator
	mana_regen_rate_per_sec*=global.invisibility_upgrade_struct.mana_regen_multiplicator
	mana*=global.invisibililty_upgrade_struct.max_mana_multiplicator
}
}
}
}