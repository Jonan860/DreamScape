function scr_banshee_auto_cast_ai_sub(){
	var list_curse_target_within_range = scr_find_enemies_within_range(curse.range)
	if(array_length(list_curse_target_within_range) > 0) {
		var curse_target = scr_find_best_procentage_debuff_target_from_list(list_curse_target_within_range, curse)
		if(curse_target != noone) {
			var save = global.clicked_tile
			var savealt = global.clicked_alt
			global.clicked_tile = curse_target.tile
			global.clicked_alt = curse_target.altitude
			mana -= curse.mana_cost
			curse.cooldown_current = curse.getCooldown()
			action_bar = 0
			curse.rightPerform()
			global.clicked_tile = save
			global.clicked_alt = savealt
		}
	}
}