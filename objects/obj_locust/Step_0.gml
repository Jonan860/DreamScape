if(instance_exists(owner)) {
switch(phase) {
	case UNIT_PHASES.searching : 
		if(time_until_next_direction_change <= 0) {
			var theta = point_direction(owner.x,owner.y, x, y)
			direction = (theta - 90 + random(180)) % 360
		}
		time_until_next_direction_change = time_until_next_direction_change <= 0 ? time_between_direction_change : time_until_next_direction_change - 1 / room_speed
		var var_potential_victim = instance_nearest(x, y, obj_unit)
		if(scr_is_enemies(owner, var_potential_victim)) {
			target = var_potential_victim
			phase = UNIT_PHASES.feeding
		} 
		break;
	case UNIT_PHASES.feeding :
			if(time_until_next_direction_change <= 0) {
				var theta = point_direction(target.x, target.y, x, y)
				direction = (theta + 90 + random(180)) % 360
			}
			time_until_next_direction_change = time_until_next_direction_change <= 0 ? time_between_direction_change : time_until_next_direction_change - 1 / room_speed
			if(point_distance(x, y, target.x, target.y)) {
				time_until_next_feed_sec -= 1/room_speed
			}
			if(time_until_next_feed_sec <= 0) {
				var stored_damage = owner.damage
				var stored_element = owner.element
				owner.damage = damage_per_feed
				owner.element = element
				var stored_target_hp = target.HP
				scr_attack_hp_reduction(owner, target, array_length(target.armor) - 1)
				owner.damage = stored_damage
				owner.element = stored_element
				food_amount += stored_target_hp - target.HP
				if(food_amount >= max_food_amount or target.HP <= 0) {
					food_amount = max_food_amount
					phase = UNIT_PHASES.returning
				}
				time_until_next_feed_sec = max_time_until_next_feed_sec
			}
			break;
	
	

	case UNIT_PHASES.returning :
		time_until_next_direction_change -= 1/room_speed
		if(time_until_next_direction_change <= 0) {
			direction = point_direction(x, y, owner.x, owner.y)
		}
		if(point_distance(x, y, owner.x, owner.y) < 10) {
			owner.HP = min(owner.max_HP, owner.HP + food_amount)
			owner.active_locusts -= 1
			instance_destroy()
		}
		break;
}
}
else
{
show_debug_message("grattis din debug verkar funka")
}