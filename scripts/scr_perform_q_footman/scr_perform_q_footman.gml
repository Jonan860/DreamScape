/// @description scr_perform_q_footman(selected_unit)
/// @param selected_unit
function scr_perform_q_footman(argument0) {

	var var_selected=argument0
	if(var_selected.object_index=obj_footman and global.player.footman_has_defend_upgrade)	
	{
		with(var_selected)
		{
	footman_is_defending=!footman_is_defending
	scr_update_damage_reduction()
		}
	}


}
