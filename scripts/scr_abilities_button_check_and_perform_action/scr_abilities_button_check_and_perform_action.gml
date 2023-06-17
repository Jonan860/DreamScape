function scr_abilities_button_check_and_perform_action() {
	with(obj_battle_hud)
	{
	if(scr_is_abilities_button_pressed())
	{
	scr_perform_abilities()
	}

	}



}
