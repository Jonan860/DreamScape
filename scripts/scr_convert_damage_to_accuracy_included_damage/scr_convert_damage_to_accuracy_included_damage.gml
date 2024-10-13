function scr_convert_damage_to_accuracy_included_damage(victim) {
	damage *= 1 - power((victim.evasiveness), accuracy)
}