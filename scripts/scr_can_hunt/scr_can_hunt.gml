function scr_can_hunt() {
	var freezed = scr_is_debuffed(global.freeze_struct)
	var var_output = (altitude != "invisible" and !freezed and !eaten)
	return var_output
}