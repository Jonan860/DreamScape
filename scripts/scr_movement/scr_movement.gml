function scr_movement() {
	if(tile != noone and phase != UNIT_PHASES.earthshatterJump) {
		if(abs(x - tile._x) > 8 or abs(y - tile._y) > 8) {
			x += sign(tile._x - x) * 8; y += sign(tile._y - y) * 8
		} else {
			x = tile._x; y = tile._y
		}
	}
	if(!scr_is_action_bar_stopped() and phase != UNIT_PHASES.idle) {
		scr_count_up_action_bar()
	}
	switch(owner) {
		case global.player : 
			if (phase == UNIT_PHASES.movement and action_bar >= movement_cost) {
				scr_movement_player()
			};  break;
		case global.enemy : 
			if( phase == UNIT_PHASES.movement and action_bar >= movement_cost) {
				scr_movement_enemy()
			} 
			if(phase == UNIT_PHASES.hunt and action_bar >= attack_cost) {
				scr_hunt_attack_enemy()
			}; break;
		case global.creep_lord :
			if( phase == UNIT_PHASES.returning and action_bar >= movement_cost/3) {
				scr_movement_creep_return()
			}
			if(phase == UNIT_PHASES.hunt and action_bar >= min(attack_cost, movement_cost)) {
				scr_creep_lord_hunt()
			}; break;	
	}
	
	if(phase != UNIT_PHASES.dead and phase != UNIT_PHASES.reviving and phase != UNIT_PHASES.earthshatterJump) {
		if((owner == global.player or owner == global.creep_lord) and phase == UNIT_PHASES.hunt and action_bar >= min(attack_cost, movement_cost)) {
			scr_player_hunt()
		}
	}
}
