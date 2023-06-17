/// @description Insert description here
// You can write your code in this editor
if(scr_is_enemies(owner,other.id))
{
	if(ds_list_find_index(nisses_lista,other.id)<0 and other!=global.ida)
{
	var var_stored_damage=owner.damage  ///element också!
	var var_stored_element=owner.element
	owner.element="fire"
	owner.damage=owner.katon_gokakyu_no_jutsu_damage
	scr_attack_hp_reduction(owner,other.id)
	//other.HP-=scr_get_damage_from_stats(global.ida,other.id,2)
	ds_list_add(nisses_lista,other.id)
	owner.damage=var_stored_damage
	owner.element=var_stored_element
}
}
