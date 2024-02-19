function scr_ai() {
	if(!scr_is_action_bar_stopped()) {
		switch(owner) {
			case global.enemy : scr_ai_enemy()
			case global.player : scr_ai_player()
			case global.creep_lord : scr_creep_ai()
		}
	}		
}

