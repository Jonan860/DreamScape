function scr_ai_spell_necromancer() {
	var varSpellToPerform = noone
	var raiseTarget = noone
	var crippleTarget = noone
	var unholyFrenzyTarget = noone
	if(raise.canPerform()) {
		var raiseTarget = scr_find_soul_within_range(raise.range) 
	}
	if(cripple.canPerform()) {
		var crippleTarget = scr_find_spell_target(cripple)
	}
	if(unholy_frenzy.canPerform()) {
		var unholyFrenzyTarget = scr_find_spell_target(unholy_frenzy)
	}
	var varSpellTargetList = [raiseTarget, crippleTarget, unholyFrenzyTarget]
	var varSpellList = [raise, cripple, unholy_frenzy]
	var varBestGoodness = 0
	var varBestCandidate = noone
	var varBestSpell = noone
	for(var i = 0; i < array_length(varSpellList); i++) {
		var targetCandidate = varSpellTargetList[i]
		var spellCandidate = varSpellList[i]
		if(targetCandidate != noone) {
			var newGoodness = spellCandidate.evaluateGoodness(targetCandidate)
			if(newGoodness > varBestGoodness) {
				varBestGoodness = newGoodness
				varBestCandidate = targetCandidate
				varBestSpell = spellCandidate
			}
		}
	}
	
	if(varBestCandidate != noone) {
		var save = global.clicked_tile
			global.clicked_tile = varBestCandidate.tile
			if(varBestSpell != raise) {
				global.clicked_alt = varBestCandidate.altitude
			}
			varBestSpell.rightPerform()
			mana -= varBestSpell.getManaCost()
	}
	
}
