function scr_find_dark_ritual_sacrifice() {
	var var_optimal_goodness_to_ritual=0
	var var_optimal_sacrifice=noone
	var var_goodness=0
	var var_conversion=ds_list_find_value(list_dark_ritual_conversion_per_lvl,spell_e_lvl-1)
	with(obj_unit)
	{
	if(owner=global.enemy)
	{
		if(scr_get_distance(tile,other.tile)<=other.dark_ritual_range)
		{
	var_goodness=HP*var_conversion-max(0,HP*var_conversion-other.mana)
	if(object_is_ancestor(object_index,obj_summon))
	{
	var_goodness*=2
	}
	if(var_goodness>var_optimal_goodness_to_ritual)
	{
	var_optimal_goodness_to_ritual=var_goodness
	var_optimal_sacrifice=self
	}
		}
	}
	}

	if(var_goodness>spell_e_mana_cost*2)
	{
	return var_optimal_sacrifice
	}
	else
	{
	return noone
	}


}
