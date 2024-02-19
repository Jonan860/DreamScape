function scr_frost_nova_damage() {
	var damage_nova = frost_nova.damage
	var store_damage = damage  ///se upp! damage_sore och store_damage är olika
	damage = damage_nova * 2
	frostnovaDamageTile(frost_nova_target) 
		other.damage *= 1/2   ////half damage on souranding area
		for(var i = 0; i <= ds_list_size(list_of_neighbours) - 1; i++) {
			frostnovaDamageTile(list_of_neighbours[|i])
		}
	damage = store_damage
	
	phase = owner == global.player ? "idle" : "movement"
	action_bar *= owner != global.player
}


function frostnovaDamageTile(tile) {
	with(tile) {
		var var_ground_list = ds_map_find_value(occupants, "ground")
		var var_air_list = ds_map_find_value(occupants, "air")
		var var_invisible_list = ds_map_find_value(occupants, "invisible")
		var lists = [var_ground_list, var_air_list, var_invisible_list]
	}
		for(var i = 0; i < array_length(lists); i++) {
			var list = list[i]
		
			if(!ds_list_empty(list)) {
				for(var i = 0; i < ds_list_size(list); i += 1) {
					var	obj = list[i]
					if(obj.object_index != obj_crystal and !object_is_ancestor(obj.object_index, obj_building)) {
						if(scr_is_enemies(obj, other)) {
							with(other) {
								var damage_store = damage
								scr_convert_damage_to_accuracy_included_damage(obj)
							}
							scr_attack_hp_reduction(other, obj)
							other.damage = damage_store
						}
					}
				}
			}
		}
}
