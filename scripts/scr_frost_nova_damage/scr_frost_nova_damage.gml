function scr_frost_nova_damage() {
	var damage_nova = list_of_frost_nova_damage_per_lvl[|spell_q_lvl - 1]
	var store_damage = damage  ///se upp! damage_sore och store_damage är olika
	damage = damage_nova * 2
	with(frost_nova_target) {
		var var_ground_list = ds_map_find_value(occupants,"ground")
		var var_air_list = ds_map_find_value(occupants,"air")
		var var_invisible_list = ds_map_find_value(occupants,"invisible")

		if(!ds_list_empty(var_ground_list)) {
			for(var i = 0; i < ds_list_size(var_ground_list); i += 1) {
				var	var_ground = ds_list_find_value(var_ground_list,i)
				if(var_ground.object_index != obj_crystal and !object_is_ancestor(var_ground.object_index, obj_building)) {
					if(scr_is_enemies(var_ground,other)) {
						with(other) {
							var damage_store = damage
							scr_convert_damage_to_accuracy_included_damage(var_ground)
						}
						scr_attack_hp_reduction(other, var_ground)
						other.damage = damage_store
					}
				}
			}
		}
		if(!ds_list_empty(var_air_list)) {
			for(var i = 0; i < ds_list_size(var_air_list); i += 1) {
				var	var_air = var_air_list[|i]
				if(var_air.object_index != obj_crystal and !object_is_ancestor(var_air.object_index, obj_building)) {
					if(scr_is_enemies(var_air,other)) {
						with(other) {
							var damage_store=damage
							scr_convert_damage_to_accuracy_included_damage(var_air)
						}
						scr_attack_hp_reduction(other, var_air)
						other.damage = damage_store
					}
				}
			}
		}
		if(!ds_list_empty(var_invisible_list)) {
			for(var i = 0; i < ds_list_size(var_invisible_list); i += 1) {
				var var_invisible = var_invisible_list[|i]
				if(var_invisible.object_index != obj_crystal and !object_is_ancestor(var_invisible.object_index, obj_building)) {
					if(scr_is_enemies(var_invisible, other)) {
						with(other) {
							var damage_store=damage
							scr_convert_damage_to_accuracy_included_damage(var_invisible)
						}
						scr_attack_hp_reduction(other, var_invisible)
						other.damage = damage_store
					}
				}
			}
		}
		other.damage *= 1/2   ////half damage on souranding area
		for(var i = 0; i <= ds_list_size(list_of_neighbours) - 1; i += 1) {
			var var_tile = list_of_neighbours[|i]
			with(var_tile) {
				var var_ground_list = ds_map_find_value(occupants, "ground")     /// kanske blir fel med VAR  och with här eller inte
				var var_air_list = ds_map_find_value(occupants, "air")
				var var_invisible_list = ds_map_find_value(occupants, "invisible")
			}
			if(!ds_list_empty(var_ground_list)) {
				for(var j = 0; j < ds_list_size(var_ground_list); j += 1) {
					var var_ground = var_ground_list[|j]
					if(var_ground.object_index != obj_crystal and !object_is_ancestor(var_ground.object_index, obj_building)) {
						if(scr_is_enemies(var_ground, other)) {
							with(other) {
								var damage_store=damage
								scr_convert_damage_to_accuracy_included_damage(var_ground)
							}
							scr_attack_hp_reduction(other, var_ground)
							other.damage = damage_store
						}
					}
				}
			}
			if(!ds_list_empty(var_air_list)) {
				for(var k = 0; k < ds_list_size(var_air_list); k += 1) {
					var	var_air = var_air_list[|k]
					if(var_air.object_index != obj_crystal  and !object_is_ancestor(var_air.object_index, obj_building)) {
						if(scr_is_enemies(var_air, other)) {
							with(other) {
								var damage_store = damage
								scr_convert_damage_to_accuracy_included_damage(var_air)
							}
							scr_attack_hp_reduction(other, var_air)
							other.damage = damage_store
						}
					}
				}
			}
			if(!ds_list_empty(var_invisible_list)) {
				for(var n = 0; n < ds_list_size(var_invisible_list); n += 1) {
					var_invisible = var_invisible_list[|n]
					if(var_invisible.object_index != obj_crystal  and !object_is_ancestor(var_invisible.object_index, obj_building)) {
						if(scr_is_enemies(var_invisible, other)) {
							with(other) {
								var damage_store = damage
								scr_convert_damage_to_accuracy_included_damage(var_invisible)
							}
							scr_attack_hp_reduction(other, var_invisible)
							other.damage = damage_store
						}
					}
				}
			}
		}
	}
	damage = store_damage
	if(owner = global.player) {
		phase = "idle"
		action_bar = 0
	} else {
		phase = "movement"
	}
}
