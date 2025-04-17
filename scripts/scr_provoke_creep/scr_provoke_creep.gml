function scr_provoke_creep() {
	if(target.owner == global.creep_lord) {
		target.phase = UNIT_PHASES.hunt
		target.target = id
	}
}
