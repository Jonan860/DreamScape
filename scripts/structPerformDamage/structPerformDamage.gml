function structPerformDamage(_target) {
	var accuracyStore = owner.accuracy
	var damageStore = owner.damage
	var piercingStore = owner.piercing
	var amplification_store = owner.amplification
	owner.accuracy = accuracy
	owner.damage = getAmount()
	owner.piercing = piercing
	owner.amplification = 1
			
	attackEffectWrapper(owner, _target, true)
	owner.accuracy = accuracyStore
	owner.damage = damageStore
	owner.piercing = piercingStore
	 owner.amplification = amplification_store 
}