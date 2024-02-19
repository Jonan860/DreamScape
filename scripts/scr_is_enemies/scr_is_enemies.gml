function scr_is_enemies(selff, otherr) {
	var team1 = [global.player]
	var team2 = [global.enemy, global.creep_lord]
	return array_contains(team1, selff.owner) and array_contains(team2, otherr.owner) or array_contains(team2, selff.owner) and array_contains(team1, otherr.owner)
}
