function scr_update_damage_reduction() {


	if(object_index=obj_footman)
	{
		damage_reduction=(base_damage_reduction+footman_is_defending)/(1+footman_is_defending)
	}
if(object_index=obj_crypt_lord)
{
	if(spell_w_lvl>0)
	{
		var reduction_from_spiked_carapace=ds_list_find_value(list_of_damage_reduction_from_spiked_carapacelvl,spell_w_lvl-1)
damage_reduction=1-(1-base_damage_reduction)*(1-reduction_from_spiked_carapace)
	}
}

}
