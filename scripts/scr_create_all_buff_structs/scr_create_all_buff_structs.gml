function scr_create_all_buff_structs() {
	global.heal_struct = {
		name : "heal",
		animation_time : 0.5,
		range : 2,
		mana_cost : 4,
		heal_amount : 6,
		cooldown : 1.5 * room_speed,
		icon_sprite : spr_heal_icon,
		spell_health : 100,
	}

	global.slow_struct = {
		name : "slow",
		mana_cost : 25,
		range : 4,
		duration : 60,
		spr_button : spr_slow_icon,
		speed_reduction : 1/3,
		cooldown : 3,
		icon_sprite : spr_slow_icon,
		spell_health : 100,
		info : "Slows targets movement and attack speed by " + string(1/3 * 100) + "." + "%" + "\n Duration:" //speed_reduction = 1/3
		 + string(60) + " seconds." + " Range:" + string(4) // duration range
		 + "Mana cost: " + string(25), //mana_cost
		q_info_abilities : undefined,
	}

	global.curse_struct = {
		name : "curse",
		duration : 60,
		mana_cost : 25,
		accuracy_multiplier : ln(2/3) / ln(1/2),
		range : 4,
		cooldown : 3,
		icon_sprite : spr_curse_icon,
		spell_health : 100,
	}

	global.invisibililty_upgrade_struct = {
		max_mana_multiplicator : 1.25,
		mana_regen_multiplicator : 1.25,
		spr_w_button : spr_invisibility_icon,
	}

	global.invisible_struct = {
		name : "invisibility",
		duration : 60,
		icon_sprite : spr_invisibility_icon,
		spell_health : 100,
		range : 4,
		upgrade_struct : global.invisibililty_upgrade_struct,
		cooldown : 1,
		mana_cost : 15,
		info : "",
		info_abilities : "",
	}
	//global.invisible.info = "Makes a friendly target invisible for "+string(global.invisible.duration)+" seconds,"
	//global.invisible.info_abilities = global.invisible.info + " and increases mana of sorceresses by "+ string(mana)+"and mana regen"

	global.raise_struct = {
		name : "raise",
		mana_cost : 40,
		range : 4,
		spell_health : 100,
		summon : obj_skeleton,
	}

	var freeze_time = 15
	var list_freeze_time = ds_list_create()
	ds_list_add(list_freeze_time,freeze_time, 1.5 * freeze_time, 2 * freeze_time, 2 * freeze_time, 2 * freeze_time)

	var spell_q_mana_cost = 30
	var list_spell_q_cost = ds_list_create()
	ds_list_add(list_spell_q_cost, spell_q_mana_cost, 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost, 1.2 * 1.2 * spell_q_mana_cost)

	global.freeze_struct = {
		name : "freeze",
		icon_sprite : spr_freeze_button,
		duration : undefined,
		mana_cost_list : list_spell_q_cost,
		spell_health : 100,
		duration_list : list_freeze_time,
		cooldown : 20,
		info_list : ds_list_create(),
		range : 1,
		info_abilities : "", //"Freezes the target unit making it invulnarable and unable to attack.\n"+"level: 1, 2, 3 Mana Cost "+string(ds_list_find_value(global.freeze_struct.mana_cost_list,0))+", "+string(ds_list_find_value(global.freeze_struct.mana_cost_list,1))+", "+string(ds_list_find_value(global.freeze_struct.mana_cost_list,2))+" Duration: "+string(ds_list_find_value(global.freeze_struct.duration_list,0))+", "+string(ds_list_find_value(global.freeze_struct.duration_list,1))+", "+string(ds_list_find_value(global.freeze_struct.duration_list,2)),
		info : undefined,
	}

	for(var i = 0; i < 3; i += 1) {
		var info = "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: "+string(global.freeze_struct.cooldown)
	 + "\n Mana cost: " + string(global.freeze_struct.mana_cost_list[|i]) + " Duration: " + string(global.freeze_struct.duration_list[|i]) + " Range: " + string(global.freeze_struct.range)

		ds_list_add(global.freeze_struct.info_list, info)
	}

}



