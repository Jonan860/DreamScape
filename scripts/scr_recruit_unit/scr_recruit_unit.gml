
function scr_recruit_unit(obj_index) {
	var var_cost=ds_map_find_value(global.map_object_to_costs, obj_index)
	if(global.player.money >= var_cost) {
		global.player.money -= var_cost
		ds_list_add(queue_list,argument0)
		exit;
	}
}
