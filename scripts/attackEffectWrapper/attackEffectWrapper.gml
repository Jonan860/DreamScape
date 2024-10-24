function attackEffectWrapper(_perputrator, _target, sureHit = false) {
	with(scr_get_nearby_friendly_spell_shield(_target)) {
		HP -= _perputrator.damage
		return
	}	
	if(sureHit or scr_is_attack_hitting(_perputrator.accuracy, _target.evasiveness)) {
		scr_attack_hp_reduction(_perputrator, _target)
	}
}