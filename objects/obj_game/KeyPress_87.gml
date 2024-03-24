if(room == map) {
	with(global.tile_selected) {
		with(selected_units[|0]) {
			buttonToSkill[? "w"].iconPerform()
		}
	}
}