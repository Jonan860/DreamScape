function scr_frost_nova_damage() {
	var store_damage = owner.damage  ///se upp! damage_sore och store_damage är olika
	owner.damage = getAmount()
	frostnovaDamageTile(target) 
	owner.damage *= 1/2   ////half damage on souranding area
	for(var i = 0; i <= array_length(target.list_of_neighbours) - 1; i++) {
		if(target.list_of_neighbours[i] != noone) {
			frostnovaDamageTile(target.list_of_neighbours[i])
		}
	}
	damage = store_damage
	owner.phase = owner.owner == global.player ? UNIT_PHASES.idle : UNIT_PHASES.movement
	owner.action_bar *= owner.owner != global.player
}


function frostnovaDamageTile(tile) {
	with(tile) {
		var var_ground_list = occupants[? ALTITUDES.ground]
		var var_air_list = occupants[? ALTITUDES.air]
		var var_invisible_list = occupants[? ALTITUDES.invisible]
		var lists = [var_ground_list, var_air_list, var_invisible_list]
	}
	for(var i = 0; i < array_length(lists); i++) {
		var list = lists[i]
		if(!array_equals(list, [])) {
			for(var i = 0; i < array_length(list); i++) {
				var	victim = list[i]
				if(victim.object_index != obj_crystal and !object_is_ancestor(victim.object_index, obj_building)) {
					if(scr_is_enemies(victim, owner)) {						
						var accuracy_store = owner.accuracy
						owner.accuracy = accuracy
						var damage_store = owner.damage
						with(owner) {							
							scr_convert_damage_to_accuracy_included_damage(victim)
						}
						attackEffectWrapper(owner, victim, true)
						owner.damage = damage_store
						owner.accuracy = accuracy_store
					}
					
				}
			}
		}
	}
}

