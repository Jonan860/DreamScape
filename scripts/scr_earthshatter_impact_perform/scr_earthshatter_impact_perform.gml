function scr_earthshatter_impact_perform() { 
	for(var i = 0; i < array_length(impacted_tiles_list); i++) {
		var  tile_to_impact = impacted_tiles_list[i]
		var ground_unit = array_first(tile_to_impact.occupants[? ALTITUDES.ground])
		if(!is_undefined(ground_unit) and ground_unit.object_index != obj_crystal and ground_unit != owner.owner) {
			var distance_from_impact = scr_get_distance(target, tile_to_impact)
			with(owner) {
				with(owner) {
					var store_damage = damage
					var store_accuracy = accuracy
					damage = other.amount[?"damage"][distance_from_impact]   //bugg Här sätts damage till undefined 
					accuracy = other.accuracy
					scr_convert_damage_to_accuracy_included_damage(ground_unit)
					attackEffectWrapper(id, ground_unit, true)
					damage = store_damage
					accuracy = store_accuracy
					scr_stun(ground_unit, other.amount[?"stun"][distance_from_impact])
				}
			}
		}
	}
	scr_make_room_for_instance_on_tile(target, ALTITUDES.ground)
	var _target = target
	with(owner.owner) {
		speed = 0
		image_xscale = spr_width / sprite_get_width(sprite_index)
		image_yscale = spr_height / sprite_get_height(sprite_index)
		phase = UNIT_PHASES.idle
		action_bar = 0
		scr_move_to_tile(_target)
	}
}