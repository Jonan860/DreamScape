function scr_earthshatter_impact_perform(){
	var list_of_impacted_tiles = ds_list_create()
	with(target) {
		draw_earthshatter = 1
		time_until_earthshatter_gone = 8
		depth -= 1
	}
	with(obj_tile) {
		if(scr_get_distance(id, other.target) <= other.earthshatter_aoe) {
			ds_list_add(list_of_impacted_tiles, id)
		}
	}
	var list_length = ds_list_size(list_of_impacted_tiles)
	for(var i = 0; i < list_length; i += 1) {
		var  tile_to_impact = list_of_impacted_tiles[|i]
		var ground_unit = tile_to_impact.grounds_list[|0]
		if(!is_undefined(ground_unit) and ground_unit.object_index!=obj_crystal and ground_unit!=id) {
			var store_damage = damage
			var distance_from_impact = scr_get_distance(target, tile_to_impact)
			damage = ds_list_find_value(earthshatter_damage_per_distance, distance_from_impact)   //bugg Här sätts damage till undefined 
			scr_attack_hp_reduction(id, ground_unit)
			damage = store_damage
			var stun_time = ds_list_find_value(earthshatter_stun_per_distance, distance_from_impact)
			scr_stun(ground_unit, stun_time)
		}
	}
	scr_make_room_for_instance_on_tile(target, "ground")
	speed = 0
	image_xscale = spr_width / sprite_get_width(sprite_index)
	image_yscale = spr_height / sprite_get_height(sprite_index)
	phase = "idle"
	action_bar = 0
	scr_move_to_tile(target)
}