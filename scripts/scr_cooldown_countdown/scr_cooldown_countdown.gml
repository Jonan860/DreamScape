function scr_cooldown_countdown() {
	with(obj_hero)
	{
	spell_q_cooldown_current=max(0,spell_q_cooldown_current-1)
	spell_w_cooldown_current=max(0,spell_w_cooldown_current-1)
	spell_e_cooldown_current=max(0,spell_e_cooldown_current-1)
	spell_r_cooldown_current=max(0,spell_r_cooldown_current-1)
	}

	with(obj_mage)
	{
	spell_q_cooldown_current=max(0,spell_q_cooldown_current-1)
	spell_w_cooldown_current=max(0,spell_w_cooldown_current-1)
	spell_e_cooldown_current=max(0,spell_e_cooldown_current-1)
	spell_r_cooldown_current=max(0,spell_r_cooldown_current-1)
	}



}
