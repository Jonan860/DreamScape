/// @description scr_freeze_unit(perputrator,victim)
/// @param perputrator
/// @param victim
function scr_freeze_unit(argument0, argument1) {
	//from obj_game
	var perputrator=argument0
	var victim=argument1
	with(victim)
	{
	scr_apply_debuff(global.freeze_struct,perputrator.spell_q_lvl)
		action_bar=0 //kanske inte?
	}

	
	}
