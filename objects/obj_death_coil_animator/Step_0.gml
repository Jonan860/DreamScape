
if(point_distance(x, y, target.x, target.y) < 10) {
	
	if(!is_undefined(target) and owner.owner != noone) {
		if(scr_is_enemies(owner.owner, target)) {
			var accuracyStore = owner.owner.accuracy
			var damageStore = owner.owner.damage
			var piercingStore = owner.owner.piercing
			owner.owner.accuracy = owner.accuracy
			owner.owner.damage = owner.getAmount()
			owner.owner.piercing = owner.piercing
			
			attackEffectWrapper(owner.owner, target, true)
			owner.owner.accuracy = accuracyStore
			owner.owner.damage = damageStore
			owner.owner.piercing = piercingStore
		}
	}
	instance_destroy()
}

if(abs(x) > 1.2 * room_width or abs(y) > 1.2 * room_height) {
	instance_destroy()
}

direction = point_direction(x,y, target.x, target.y)