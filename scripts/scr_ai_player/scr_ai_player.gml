function scr_ai_player() {
	if(owner==global.player)
	{
		
	if(phase="idle" and action_bar==0) //300519
	{
		player_ai_idle_counter-=1
	if(player_ai_idle_counter<=0)
	{
	player_ai_idle_counter=room_speed*global.player_idle_ai_think_time_in_sec
		scr_idle_player_ai()

	}
	}
	
	if(phase="healing")
	{
	if(target.HP=target.max_HP or scr_get_distance(tile,target.tile)>heal_range or altitude="invisible")
	{
	phase="idle"
	action_bar=0 //2021
	}
	else
	{
	if(spell_q_mana_cost<mana and spell_q_cooldown_current<=0)
	{
	scr_heal_target()
	spell_q_cooldown_current=spell_q_cooldown_max
	mana-=spell_q_mana_cost
	action_bar=0
	}
	}
	}
	player_ai_spell_counter-=1
	if(player_ai_spell_counter<=0)
	{
	player_ai_spell_counter=room_speed*global.player_ai_think_time_in_sec
	scr_sorceress_slow_auto_cast_ai()
	scr_priest_heal_auto_cast_ai()
	}


}
}