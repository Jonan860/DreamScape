function scr_is_action_bar_stopped() {
	if(scr_is_debuffed(global.freeze_struct) or phase="sleep" or stunned)  //or other stuff
	{
	return 1
	}
	else
	{
	return 0
	}


}
