/// @description scr_perform_q_unit_producing_building(selected_unit)
/// @param selected_unit
function scr_perform_q_unit_producing_building(argument0) {
	var var_selected=argument0

	if(object_is_ancestor(var_selected.object_index,obj_unit_producing_building))
	{
		with(var_selected)
		{
			if(!unfinished)
			{
		scr_recruit_unit(q_object)
		}
		}
	}


}
