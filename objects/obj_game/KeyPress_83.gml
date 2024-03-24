
if(room == map) {
	scr_perform_s()
}

if(room == map) {
	with(global.tile_selected) {
		with(selected_units[|0]) {
			buttonToSkill[? "s"].iconPerform()
		}
	}
}