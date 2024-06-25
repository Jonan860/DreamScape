function scr_find_frost_nova_target_within_range() {
	var var_optimal_tile_target = noone
	var optimal_goodness = 0
	loopTilesStart
		if(scr_get_distance(self, other.tile) <= other.frost_nova.range) {
			var var_ground_unit_list = ds_map_find_value(occupants, ALTITUDES.ground)
			var var_air_unit_list = ds_map_find_value(occupants, ALTITUDES.air)
			var var_goodness_of_frost_nova = 0
			if(!(var_ground_unit_list == [])) {
				for(var i = 0; i < array_length(var_ground_unit_list); i += 1) {
					var var_ground_unit = var_ground_unit_list[i]
					if(var_ground_unit.object_index != obj_crystal and !object_is_ancestor(var_ground_unit.object_index, obj_building) ) {	
						if(scr_is_enemies(other, var_ground_unit)) {
							var_goodness_of_frost_nova += 2 * array_length(var_ground_unit_list)
						}
					}
				}
			}
	
			if(!(var_air_unit_list == [])) {
				for(var i = 0; i < array_length(var_air_unit_list); i += 1) {
					var var_air_unit = var_air_unit_list[i]
					if(var_air_unit.object_index != obj_crystal) {
						if(scr_is_enemies(other, var_air_unit)) {
							var_goodness_of_frost_nova += 2
						}
					}
				}
			}
			for(var i = 0; i <= array_length(list_of_neighbours) - 1; i++) {
				var var_tile = list_of_neighbours[i]
				with(var_tile) {
					var var_ground_unit_list = ds_map_find_value(occupants, ALTITUDES.ground)
					var var_air_unit_list = ds_map_find_value(occupants, ALTITUDES.air)
				}
				if(!(var_ground_unit_list == [])) {
					for(var j = 0; j < array_length(var_ground_unit_list); j += 1) {
						var var_ground_unit = var_ground_unit_list[j]
						if(var_ground_unit.object_index != obj_crystal and !object_is_ancestor(var_ground_unit.object_index, obj_building))
						if(scr_is_enemies(other, var_ground_unit)) {
							var_goodness_of_frost_nova++
						}
					}
				}
				if(!(var_air_unit_list == [])) {
					for(var k = 0; k < array_length(var_air_unit_list); k += 1) {
						var var_air_unit = var_air_unit_list[k]
						if(scr_is_enemies(other, var_air_unit)) {
							var_goodness_of_frost_nova++
						}
					}
				}
				if(var_goodness_of_frost_nova > optimal_goodness) {
					var_optimal_tile_target = id
					optimal_goodness = var_goodness_of_frost_nova
				}
			}
		}
	loopTilesEnd
	return var_optimal_tile_target
}
