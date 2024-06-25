function scr_instance_create_at_tile_with_owner(objectofinstance, tileofcreation, owna) {
	var instanceofcreation = instance_create_layer(tileofcreation._x, tileofcreation._y, "instances", objectofinstance, {owner : owna})
	instanceofcreation.layer = layer_get_id(altitudeToStr(instanceofcreation.altitude))
	instanceofcreation.tile = tileofcreation
	var alt_list = ds_map_find_value(tileofcreation.occupants, instanceofcreation.altitude)
	array_push(alt_list, instanceofcreation)
	//instanceofcreation.owner = owna
	return instanceofcreation
}
