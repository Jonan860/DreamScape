function scr_provoke_creep() {
	var provoker = id
	if(target.owner == global.creep_lord) {
		target.phase = UNIT_PHASES.hunt
		target.target = id
		with(target) {
			for (var i = 0; i < array_length(creep_buddies); i++)
			{
				if(creep_buddies[i].target == noone) {
					with(creep_buddies[i]) {
						target = provoker
						destination = provoker.tile
						phase = UNIT_PHASES.hunt
					}
				}
			}
		}
	}
}
