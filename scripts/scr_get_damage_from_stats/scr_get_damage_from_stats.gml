function scr_get_damage_from_stats(argument0, argument1, argument2) {

	///scr_get_damage_from_stats(attacker,defender,move_strenght)
	/// @param attacker
	/// @param defender
	/// @param move_strenght

	var attacker=argument0
	var defender=argument1
	var move_strength=argument2

	return move_strength*attacker.damage*(1-defender.damage_reduction)*scr_get_element_attack_bonus(attacker.element,defender.element)


}
