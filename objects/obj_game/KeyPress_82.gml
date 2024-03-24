
if(room == map) {
	with(var_selected) {
		if(number_of_ability_points > 0 and level >= 6) {
			buttonToSkill[? "r"].level_up()	
		}
	}
	with(global.tile_selected) {
		with(selected_units[|0]) {
			buttonToSkill[? "r"].iconPerform()
		}
	}
}