function scr_raise_carrion_beetle(soul_to_raise) {
	scr_make_room_for_instance_on_tile(soul_to_raise.tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_carrion_beetle, soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}