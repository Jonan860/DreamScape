function scr_update_damage_reduction() {


	if(object_index=obj_footman)
	{
		damage_reduction=(base_damage_reduction+footman_is_defending)/(1+footman_is_defending)
	}


}
