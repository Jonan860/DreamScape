var target_unit = target
if(!is_undefined(target_unit) and owner != noone) {
	if(scr_is_enemies(owner.owner, target_unit)) {	
		savedStats = owner.transferStatsToOwner()
		attackEffectWrapper(owner.owner, target_unit, true)
		owner.recreateOwnerStats(savedStats)
	}
}

