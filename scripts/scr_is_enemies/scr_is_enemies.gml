function scr_is_enemies(selff, otherr) {
	return (selff.owner == global.player and (otherr.owner == global.enemy or otherr.owner == global.creep_lord)) or ((selff.owner == global.enemy or selff.owner == global.creep_lord) and otherr.owner == global.player))
}
