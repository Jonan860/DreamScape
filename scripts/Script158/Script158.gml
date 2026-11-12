function getAltPressed(){
	if(keyboard_check(vk_shift)) {
		return ALTITUDES.air
	}
	if(keyboard_check(vk_control)) {
		return ALTITUDES.invisible
	}
	return ALTITUDES.ground
}