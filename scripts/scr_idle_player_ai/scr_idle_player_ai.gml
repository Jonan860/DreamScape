function scr_idle_player_ai() {
	if(scr_can_hunt()) {
		var var_target = scr_search_and_perhaps_get_target()
		if(var_target == noone) {
			var var_target = scr_find_unit_that_is_targeting_you()
		}	
		if(var_target != noone) {
			target = var_target
			destination = target.tile
			phase = UNIT_PHASES.hunt
			if(owner == global.creep_lord) {
				for (var i = 0; i < array_length(creep_buddies); i++)
				{
					if(creep_buddies[i].target == noone) {
						with(creep_buddies[i]) {
							target = var_target
							destination = target.tile
							phase = UNIT_PHASES.hunt
						}
					}
				}
			}
		}
	}
}