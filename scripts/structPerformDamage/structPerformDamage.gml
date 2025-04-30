function structPerformDamage(_target) {
	var accuracyStore = owner.accuracy
	var damageStore = owner.damage
	var piercingStore = owner.piercing
	owner.accuracy = accuracy
	owner.damage = getAmount()
	owner.piercing = piercing
			
	attackEffectWrapper(owner, _target, true)
	owner.accuracy = accuracyStore
	owner.damage = damageStore
	owner.piercing = piercingStore
}