function structPerformDamage(_target) {
	var accuracyStore = owner.accuracy
	var damageStore = owner.damage
	var piercingStore = owner.piercing
	var damage_amplification_store = owner.damage_amplification
	owner.accuracy = accuracy
	owner.damage = getAmount()
	owner.piercing = piercing
	owner.damage_amplification = 1
			
	attackEffectWrapper(owner, _target, true)
	owner.accuracy = accuracyStore
	owner.damage = damageStore
	owner.piercing = piercingStore
	 owner.damage_amplification = damage_amplification_store 
}