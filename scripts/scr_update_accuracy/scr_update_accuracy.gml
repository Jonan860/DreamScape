
function scr_update_accuracy() {
	var cursed = scr_is_debuffed(global.curse_struct)
	accuracy = base_accuracy * (1 * !cursed + global.curse_struct.accuracy_multiplier * cursed)
}