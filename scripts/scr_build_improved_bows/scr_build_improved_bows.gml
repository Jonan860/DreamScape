/// @scr_build_unit(object)
/// @param object
function scr_build_improved_bows(argument0) {
	//called from building
	///
	if(argument0=obj_improved_bows_upgrade)
	{
	with(global.player)
	{
	elven_archers_has_improved_bows=1
	}
	with(obj_elven_archer)
	{
	scr_update_range()
	}
	ds_list_delete(queue_list,0)
		build_progress=0
	}


}
