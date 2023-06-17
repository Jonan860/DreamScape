////done from soul
function scr_raise_skeleton(argument0) {
	var soul_to_raise=argument0
	scr_make_room_for_instance_on_tile(soul_to_raise.tile,"ground")
	scr_instance_create_at_tile_with_owner(obj_skeleton,soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)


}
