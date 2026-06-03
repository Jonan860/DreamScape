/// scr_attack_hp_reduction(perputrator,victim)
/// @param perputrator
/// @param victim
function scr_attack_hp_reduction(argument0, argument1) {

	var var_perputrator=argument0
	var var_victim=argument1
	var var_hp_to_remove=var_perputrator.damage*(1-var_victim.damage_reduction)*(1-scr_get_spell_shield_damage_reduction(var_victim))*scr_get_element_attack_bonus(var_perputrator.element,var_victim.element)
	var_victim.HP-=var_hp_to_remove
	if(object_is_ancestor(var_perputrator,obj_unit))
	{
	if(var_perputrator.vampiric_aura_percentage>0)
	{
	var_perputrator.HP=min(var_perputrator.max_HP,var_perputrator.HP+var_perputrator.vampiric_aura_percentage/100*var_hp_to_remove)
	}
	}
	if(var_perputrator.object_index=obj_light_beam)
	{
	var var_creator=var_perputrator.creator
	var_creator.HP=min(var_creator.max_HP,var_creator.HP+var_creator.vampiric_aura_percentage/100*var_hp_to_remove)

	}




}
