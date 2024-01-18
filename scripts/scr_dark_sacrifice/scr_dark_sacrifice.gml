function scr_dark_sacrifice(var_sacrifice) {
	var mana_conversion = ds_list_find_value(list_dark_ritual_conversion_per_lvl, spell_e_lvl - 1)
	mana = min(max_mana, mana + var_sacrifice.HP*mana_conversion)
	with(var_sacrifice) {
		phase = "sacrificed"
		time_until_dark_ritual_sacrifice_sec = other.id.dark_ritual_duration_sec
	}
}
