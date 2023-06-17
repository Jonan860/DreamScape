/// @description scr_frost_nova(target_tile)
/// @param target_tile
function scr_frost_nova(argument0) {

	var var_target_tile=argument0

	phase="frost nova"
	time_until_frost_nova_sec=frost_nova_total_time_sec
	frost_nova_target=var_target_tile
	var var_frost_nova=instance_create_layer(frost_nova_target.x,frost_nova_target.y,"tiles",obj_frost_nova)
	with(var_frost_nova)
	{
	time_until_frost_nova_after_effect_end_sec=other.total_time_frost_nova_after_effect_end_sec
	total_time_frost_nova_after_effect_end_sec=other.total_time_frost_nova_after_effect_end_sec
	time_until_frost_nova_sec=other.frost_nova_total_time_sec
	frost_nova_total_time_sec=other.frost_nova_total_time_sec
	frost_nova_target=other.frost_nova_target
	depth-=1
	}


}
