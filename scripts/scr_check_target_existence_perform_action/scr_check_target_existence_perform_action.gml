// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_check_target_existence_perform_action() {
	var var_target_is_object=0
	if(target!=noone)
	{
	var u=random(5)
	}
	with(obj_unit)
	{
	if(id=other.target)
	{
	var_target_is_object=1
	}
	}

	with(obj_building )
	{
	if(id=other.target)
	{
	var_target_is_object=1
	}
	}

	with(obj_crystal)
	{
	if(id=other.target)
	{
	var_target_is_object=1
	}
	}

	if(var_target_is_object=0)
	{
	target=noone
	}


}
