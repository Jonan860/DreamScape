/// @scr_build_unit(object)
/// @param object
function scr_build_defend_upgrade(argument0) {
	//called from building
	///
	if(argument0=obj_footman_defend_upgrade)
	{
	with(global.player)
	{
	footman_has_defend_upgrade=1
	}
	ds_list_delete(queue_list,0)
		build_progress=0
	}


}
