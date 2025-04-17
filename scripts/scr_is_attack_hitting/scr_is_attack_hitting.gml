function scr_is_attack_hitting(var_accuracy, var_evasiveness) {
	return random(1) < 1 - power(var_evasiveness, var_accuracy)
}
