function scr_frost_nova_damage() {
	var store_damage = owner.damage  ///se upp! damage_sore och store_damage är olika
	owner.damage = getAmount()
	frostnovaDamageTile(target) 
	owner.damage *= 1/2   ////half damage on souranding area
	for(var i = 0; i <= ds_list_size(target.list_of_neighbours) - 1; i++) {
		frostnovaDamageTile(target.list_of_neighbours[|i])
	}
	damage = store_damage
	owner.phase = owner.owner == global.player ? "idle" : "movement"
	owner.action_bar *= owner.owner != global.player
}


function frostnovaDamageTile(tile) {
	with(tile) {
		var var_ground_list = ds_map_find_value(occupants, "ground")
		var var_air_list = ds_map_find_value(occupants, "air")
		var var_invisible_list = ds_map_find_value(occupants, "invisible")
		var lists = [var_ground_list, var_air_list, var_invisible_list]
	}
	for(var i = 0; i < array_length(lists); i++) {
		var list = lists[i]
		if(!ds_list_empty(list)) {
			for(var i = 0; i < ds_list_size(list); i += 1) {
				var	victim = list[|i]
				if(victim.object_index != obj_crystal and !object_is_ancestor(victim.object_index, obj_building)) {
					if(scr_is_enemies(victim, owner)) {
						var damage_store = owner.damage
						owner.damage = getAmount()
						with(owner) {
							scr_convert_damage_to_accuracy_included_damage(victim)
						}
					}
					attackEffectWrapper(owner, victim)
					owner.damage = damage_store
				}
			}
		}
	}
}

