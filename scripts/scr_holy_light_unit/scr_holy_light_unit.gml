function scr_holy_light_unit(argument0, argument1) {
	perputrator=argument0
	target=argument1

	target.HP=min(target.HP+perputrator.spell_q_heal_amount,target.max_HP)
	target.holy_lighted=1
	target.alarm[2]=global.spell_q_duration*room_speed


}
