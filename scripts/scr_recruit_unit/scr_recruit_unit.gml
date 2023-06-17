/// scr_recruit_unit(object)
/// @param object
function scr_recruit_unit(argument0) {


	var var_cost=ds_map_find_value(global.map_object_to_costs,argument0)
	if(global.player.money>=var_cost)
		{
			global.player.money-=var_cost
	ds_list_add(queue_list,argument0)
	exit;

		}
		else
		{
		exit;
		}


}
