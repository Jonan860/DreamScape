// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_build_invisibilty_upgrade(argument0){
	//called from building
	///
	if(argument0=obj_sorceress_invisibility_upgrade)
	{
	with(global.player)
	{
	sorceress_has_invisibility=1
	}
	with(obj_sorceress)
		{
mana+=global.invisibility_upgrade_mana_bonus/2
max_mana+=global.invisibility_upgrade_mana_bonus
mana_regen_rate_per_sec+=global.invisibility_upgrade_mana_regen_bonus
}
	ds_list_delete(queue_list,0)
		build_progress=0
	}


}