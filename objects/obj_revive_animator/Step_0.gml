if(owner.owner.phase == UNIT_PHASES.reviving) {
	with(instance_position(owner.owner.x, owner.owner.y, obj_soul_hero)) {
		if(revival_time_left_sec > 0) {
			revival_time_left_sec -= 1/room_speed
		} else {
			var var_hero = instance
			with(var_hero) {
				scr_make_room_for_instance_on_tile(other.tile, altitude)
				scr_move_to_tile(other.tile)
				x = tile.x; y = tile.y;
				phase = UNIT_PHASES.idle
				action_bar = 0 //2021
			}
			other.owner.phase = UNIT_PHASES.idle
			instance_destroy(id)
		}
	}
} else {
	instance_destroy()
}
