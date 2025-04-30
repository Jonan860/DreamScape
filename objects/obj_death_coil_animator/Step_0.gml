
projectileAnimatorPerformDamage()

function projectileAnimatorPerformDamage() {
	if(point_distance(x, y, target.x, target.y) < 10) {
	
		if(!is_undefined(target) and owner.owner != noone) {
			if(scr_is_enemies(owner.owner, target)) {
				
			}
		}
		instance_destroy()
	}

	if(abs(x) > 1.2 * room_width or abs(y) > 1.2 * room_height) {
		instance_destroy()
	}
	
	direction = point_direction(x,y, target.x, target.y)	
}

