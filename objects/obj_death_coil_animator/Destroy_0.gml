var target_unit = target
if(!is_undefined(target_unit) and owner != noone) {
	if(scr_is_enemies(owner.owner, target_unit)) {
		savedStats = owner.transferStatsToOwner()
		owner.owner.damage /= 2
		attackEffectWrapper(owner.owner, target_unit, true)
		owner.recreateOwnerStats(savedStats)
	} else {
		target_unit.HP = min(target_unit.HP + owner.getAmount(), target_unit.max_HP)
	}
}

