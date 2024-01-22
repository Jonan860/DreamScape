
function scr_update_accuracy() {
	var cursed = scr_is_debuffed(global.curse_struct)
	accuracy = base_accuracy * (cursed ? 1 : global.curse_struct.accuracy_multiplier)
}