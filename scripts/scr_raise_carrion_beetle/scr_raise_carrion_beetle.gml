// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_raise_carrion_beetle(argument0) {
	var soul_to_raise=argument0
	scr_make_room_for_instance_on_tile(soul_to_raise.tile,"ground")
	scr_instance_create_at_tile_with_owner(obj_carrion_beetle,soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}