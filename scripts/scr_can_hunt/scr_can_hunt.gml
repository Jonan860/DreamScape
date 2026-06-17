function scr_can_hunt() {
	var var_output = (altitude != ALTITUDES.invisible and !scr_is_debuffed(SPELLS.freeze) and !eaten and !tied_up and object_index != obj_lille_skutt)
	return var_output
}