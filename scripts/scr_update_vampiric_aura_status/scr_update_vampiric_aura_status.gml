function scr_update_vampiric_aura_status() {
	var var_dreadlord=instance_find(obj_dreadlord,0)
	if(var_dreadlord!=noone)
	{
		if(scr_is_enemies(id,var_dreadlord)==0)
		{
	vampiric_aura_percentage=ds_list_find_value(var_dreadlord.list_vampiric_aura_bonus_in_procentage,var_dreadlord.spell_e_lvl)
	}
	}


}
