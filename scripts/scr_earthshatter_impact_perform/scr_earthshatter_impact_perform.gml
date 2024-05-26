function scr_earthshatter_impact_perform() { 
	for(var i = 0; i < ds_list_size(impacted_tiles_list); i += 1) {
		var  tile_to_impact = impacted_tiles_list[|i]
		var ground_unit = tile_to_impact.grounds_list[|0]
		if(!is_undefined(ground_unit) and ground_unit.object_index != obj_crystal and ground_unit != owner.owner) {
			var distance_from_impact = scr_get_distance(target, tile_to_impact)
			with(owner) {
				var store_damage = owner.damage
				owner.damage = amount[?"damage"][distance_from_impact]   //bugg Här sätts damage till undefined 
				attackEffectWrapper(owner.id, ground_unit)
				owner.damage = store_damage
				scr_stun(ground_unit, amount[?"stun"][distance_from_impact - 1])
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