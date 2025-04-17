function attackEffectWrapper(_perputrator, _target, sureHit = false) {
	with(scr_get_nearby_friendly_spell_shield(_target)) {
		HP -= _perputrator.damage
		return
	}	
	if(sureHit or scr_is_attack_hitting(_perputrator.accuracy, _target.evasiveness)) {
		var hitfound
		var coverageLeft = 1
		if(!sureHit) {
			for(i = 0; i < array_length(_target.armor_coverage); i++) {
				if(random(1)  < (1 - (1 - _target.armor_coverage[i]/100 / coverageLeft)^_perputrator.accuracy)) {
					scr_attack_hp_reduction(_perputrator, _target, _target.armor[i])
					break
				}
				coverageLeft -= _target.armor_coverage[i]/100
			}
		} else {
			var varArmor = 0
			for(i = 0; i < array_length(_target.armor); i++){
				varArmor += _target.armor[i] * _target.armor_coverage[i]/100
			}
			scr_attack_hp_reduction(_perputrator, _target, varArmor)
		}
	}
}