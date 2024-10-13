x = owner.owner.x; y = owner.owner.y

counter_to_attack++
if(total_damage_done >= max_damage or owner.owner.HP <= 0) {
	instance_destroy()
	exit;
}
if(counter_to_attack >= owner.owner.attack_cost) {
	counter_to_attack = 0
	var var_list_of_tiles = []
	for(var i = 1; i <= owner.range; i++) {
		var var_list_of_additional_tiles = scr_get_tiles_at_range(owner.owner.tile, owner.range)
		var_list_of_tiles = array_concat(var_list_of_tiles, var_list_of_additional_tiles) //need to for loop if range	
	}
	for(var i = 0; i <= array_length(var_list_of_tiles) - 1; i++) {
		var var_tile = var_list_of_tiles[i]
		var var_occupant_ground = array_first(var_tile.occupants[? ALTITUDES.ground])
		if(!is_undefined(var_occupant_ground)) {
			if(scr_is_enemies(owner.owner, var_occupant_ground)) {
				if(scr_is_attack_hitting(owner.owner.accuracy, var_occupant_ground.evasiveness)) {
					var store_target = owner.owner.target
					owner.owner.target = var_occupant_ground
					var HP1 = owner.owner.target.HP
					with(owner.owner) {
						scr_attack_target_nils()
						var HP2 = target.HP
					}
					total_damage_done += HP1 - HP2
					owner.owner.target = store_target
				//scr_attack_hp_reduction(creator,var_occupant_ground)
				}
			}
		}
	}
}
image_angle += 0  //360*1/(rotation_time*game_get_speed(gamespeed_fps))