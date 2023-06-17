/// scr_instance_create_at_tile_with_owner(object,tile,owner)
/// @param object
/// @param tile
/// @param owner
function scr_instance_create_at_tile_with_owner(argument0, argument1, argument2) {
	var objectofinstance=argument0
	var tileofcreation=argument1
	var owna=argument2
	var instanceofcreation=instance_create_layer(tileofcreation.x,tileofcreation.y,"instances",objectofinstance)
		instanceofcreation.layer=layer_get_id(instanceofcreation.altitude)
		instanceofcreation.tile=tileofcreation

	//ds_map_replace(tileofcreation.occupants,instanceofcreation.altitude,instanceofcreation)
var alt_list=ds_map_find_value(tileofcreation.occupants,instanceofcreation.altitude)
	ds_list_add(alt_list,instanceofcreation)
	instanceofcreation.owner=owna
	return instanceofcreation


}
