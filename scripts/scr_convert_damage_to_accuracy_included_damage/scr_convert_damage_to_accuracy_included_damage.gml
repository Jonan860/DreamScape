function scr_convert_damage_to_accuracy_included_damage(victim) {
	damage *= power((1 - victim.evasiveness), accuracy)
}