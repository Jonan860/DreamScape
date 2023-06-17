// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_perform_w_unit_producing_building(argument0) {
	var var_selected=argument0

	if(object_is_ancestor(var_selected.object_index,obj_unit_producing_building))
	{
		with(var_selected)
		{
			if(!unfinished)
			{
		scr_recruit_unit(w_object)
		}
		}
	}
}
