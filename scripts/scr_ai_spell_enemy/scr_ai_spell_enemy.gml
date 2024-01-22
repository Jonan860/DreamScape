function scr_ai_spell_enemy() {
	enemy_ai_spell_counter -= 1
	if(enemy_ai_spell_counter <= 0) {
		enemy_ai_spell_counter = room_speed * global.enemy_ai_think_time_in_sec
		ai()
	}
}
