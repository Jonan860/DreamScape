/// @scr_build_unit(object)
/// @param object
function scr_build_object(argument0) {
	//called from building
	///
	var object_to_build=argument0
	scr_build_unit(object_to_build)
	scr_build_upgrade(object_to_build)


}
