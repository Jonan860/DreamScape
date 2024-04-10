function scr_movement() {
	if(!scr_is_action_bar_stopped() and phase != "idle") {
		scr_count_up_action_bar()
	}
	switch(owner) {
		case global.player : 
			if (phase == "movement" and action_bar >= movement_cost) {
				scr_movement_player()
			};  break;
		case global.enemy : 
			if( phase == "movement" and action_bar >= movement_cost) {
				scr_movement_enemy()
			} 
			if(phase == "hunt" and action_bar >= attack_cost) {
				scr_hunt_attack_enemy()
			}; break;
		case global.creep_lord :
			if( phase == "return" and action_bar >= movement_cost/3) {
				scr_movement_creep_return()
			}
			if(phase == "hunt" and action_bar >= min(attack_cost, movement_cost)) {
				scr_creep_lord_hunt()
			}; break;	
	}
	
	if(phase != "dead" and phase != "reviving" and phase != "earthshatter jump") {
		if((owner == global.player or owner == global.creep_lord) and phase == "hunt" and action_bar >= min(attack_cost, movement_cost)) {
			scr_player_hunt()
		}
	}
}
