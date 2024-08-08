function attackEffectWrapper(_perputrator, _target, sureHit = false) {
	var shield = false
	with(scr_get_nearby_friendly_spell_shield(_target)) {
		HP -= _perputrator.damage
		shield = true
		break;
	}	
	if(!shield) {
		if(sureHit or scr_is_attack_hitting(_perputrator.accuracy, _target.evasiveness) and !shield) {
			scr_attack_hp_reduction(_perputrator, _target)
		}
	}
}