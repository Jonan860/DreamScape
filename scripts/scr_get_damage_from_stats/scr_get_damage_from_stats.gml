function scr_get_damage_from_stats(attacker, defender, move_strength) {
	return move_strength * attacker.damage * (1 - defender.damage_reduction) * scr_get_element_attack_bonus(attacker.element, defender.element)
}
