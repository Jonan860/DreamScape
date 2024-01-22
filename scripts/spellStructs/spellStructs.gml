function scr_mouse_on_learn_katon_gokakuy_no_jutsu_button() {
	return learn_button_width + learn_spell_q_button_width < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width and 0 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < learn_spell_w_button_height)
}

function scr_mouse_on_learn_kawarimi_no_jutsu_button() {
	return learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width < mouse_x and mouse_x < learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width + learn_spell_e_button_width and 0 < mouse_y and mouse_y < learn_spell_e_button_height)
}

function scr_mouse_on_learn_button() {
	return hud_abilities_x - hud_abilities_x/2 < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < hud_abilities_x + spell_button_width/2 and hud_abilities_y - spell_button_height/2 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < hud_abilities_y + spell_button_height / 2
}

function scr_mouse_on_freeze_button() {
	return (learn_button_width < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < learn_button_width + learn_spell_q_button_width and 0 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < learn_spell_q_button_height)
}

 katon_gokakyu_no_jutsu = {
	damage : 20,
	damageFromLvl : function(lvl) {
		switch(lvl) {
			case 1 : return 20
			case 2 : return 30
			case 3 : return 45
		}
	},
	manaCostFromLvl : function(lvl) {
		switch(lvl) {
			case 1 : return 30
			case 2 : return 45
			case 3 : return 60
		}
	},
	mana_cost : 30,
	owner : noone,
	lvl : 0,
	activated,
	icon : spr_katon_gokakyu_no_jutsu_button,
	object : obj_katon_gokakyu_no_jutsu,
	letter : "W",
	info = "Hurls an fireball towards the north,\n damaging everything in its path\n Cooldown: " + string(spell_w_cooldown_max / room_speed)
		 + "\n Mana cost: " + string(mana_cost) + "\n Damage: " + string(damage),
	
	info_abilities = "Hurls an fireball towards the north,\n damaging everything in its path\n" + "level: 1,2,3 " + "Damage = " + "Damage x " + string(katon_gokakyu_no_jutsu.damageFromLvl(1) + ", " + string(katon_gokakyu_no_jutsu.damageFromLvl(2) + ", " + string(katon_gokakyu_no_jutsu.damageFromLvl(2)
 + "\n Mana cost: " + string(manaCostFromLvl(1) + ", " + string(manaCostFromLvl(1) + ", " + string(manaCostFromLvl(2),

	scrPerform = function() {
		if(owner.cooldown_current == 0 and owner.mana >= owner.mana_cost and lvl > 0) {
			cooldown_current = cooldown_max
			owner.mana -= mana_cost
			with(instance_create_depth(owner.x, owner.y, id.depth, object)) {
				owner = other.owner
				y -= sprite_width
				image_angle = 90
				vspeed = -4
			}
		}
	}
 }
 
 
Impale = {
	mana_cost : 30,
	icon : spr_impale_icon
	info : "Slams the ground with the Crypt Lord's massive claws, \n shooting spiked tendrils out in a straight line, dealing damage and hurling enemy ground units into the air in their wake..\n Cooldown: " + string(cooldown_max / room_speed)
 + "\n Mana cost: " + string(mana_cost)
}

function spellToCooldown(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return 20
		case SPELLS.impale : return 20
		case SPELLS.earthshatter : 
		case SPELLS.frost_nova : 
		case SPELLS.holy_light : 
		case SPELLS.kawarimi_no_jutsu : return 20
		case SPELLS.spell_shield : return 10
		case SPELLS.spiked_carapace : return noone;	
		case SPELLS.freeze : return 20
		case SPELLS.locust_swarm : return 60
		case SPELLS.ninjago : return 20
		case SPELLS.golden_dragon : return 20
	}
}

function spellToManaCosts(spell) {
	switch(spell) {
			case SPELLS.impale : return [30, 45, 60];
			case SPELLS.frost_nova : return []
			case SPELLS.holy_light : return []
			case SPELLS.kawarimi_no_jutsu : return []
			case SPELLS.spell_shield : return [];
			case SPELLS.spiked_carapace : return []
			case SPELLS.earthshatter : return []
			case SPELLS.carrion_beetles : return []
			case SPELLS.katon_gokakyu_no_jutsu : return [20, 30, 45]
			case SPELLS.freeze : return [30, 45, 60]
			case SPELLS.locust_swarm : return 
			case 
		}
}

function spellToSpellHealth(spell) {
	switch(spell) {
		case SPELLS.impale : return 
		case SPELLS.frost_nova : return 
		case SPELLS.holy_light : return 
		case SPELLS.kawarimi_no_jutsu : return 
		case SPELLS.spell_shield : return;
		case SPELLS.spiked_carapace : return 
		case SPELLS.earthshatter : return 
		case SPELLS.carrion_beetles : return
		case SPELLS.katon_gokakyu_no_jutsu : return 
		case SPELLS.freeze : return 100
	}
}

function spellToIcon(spell) {
	switch(spell) {
		case SPELLS.impale : return spr_impale_icon
		case SPELLS.frost_nova : return spr_frost_nova_icon
		case SPELLS.holy_light : return spr_holy_light_button
		case SPELLS.kawarimi_no_jutsu : return spr_kawarimi_button
		case SPELLS.spell_shield : return spr_spell_shield_button
		case SPELLS.spiked_carapace : return spr_spiked_carapace_icon
		case SPELLS.earthshatter : return spr_earthquake_punch_icon
		case SPELLS.carrion_beetles : return spr_carrion_beetles_icon
		case SPELLS.katon_gokakyu_no_jutsu : return spr_katon_gokakyu_no_jutsu_button 
		case SPELLS.freeze : return spr_freeze_button
		case SPELLS.ninjago : return spr_ninjago_button
		case SPELLS.golden_dragon : return spr_golden_dragon_icon
	}
} 

function spellToDuration() {
	switch(spell) {
		case SPELLS.impale : return 
		case SPELLS.frost_nova : return 
		case SPELLS.holy_light : return 
		case SPELLS.kawarimi_no_jutsu : return 
		case SPELLS.spell_shield : return
		case SPELLS.spiked_carapace : return 
		case SPELLS.earthshatter : return 
		case SPELLS.carrion_beetles : return 
		case SPELLS.katon_gokakyu_no_jutsu : return 
		case SPELLS.freeze : return [15, 30, 45]
		case SPELLS.ninjago : return 
		case SPELLS.golden_dragon : return 
	}
}

function spellToName(spell) {
	switch(spell) {
		case SPELLS.impale : return "Impale"
		case SPELLS.frost_nova : return "Frost Nova"
		case SPELLS.holy_light : return "Holy Light"
		case SPELLS.kawarimi_no_jutsu : return "Kawarimi no Jutsu"
		case SPELLS.spell_shield : return "Spell Shield"
		case SPELLS.spiked_carapace : return "Spiked Carapace"
		case SPELLS.earthshatter : return "Earth Shatter"
		case SPELLS.carrion_beetles : return "Carrion Beetles"
		case SPELLS.katon_gokakyu_no_jutsu : return "Katon Gokakyu no Jutsu" 
		case SPELLS.freeze : return "Freeze"
		case SPELLS.golden_dragon : return "Golden Dragon"
		case SPELLS.ninjago : return "Ninjago"
	}
}

function spellToGetInfo(spell) {
	case SPELLS.impale : return function() {return "impale"}
	case SPELLS.frost_nova : return function() {return "Causes ice damage on enemy units within an area\n Cooldown : " + string(spell_q.cooldown)
 + "\n Mana cost: " + string(mana_cost)}
	case SPELLS.carrion_beetles : return function() {"The Crypt Lord progenerates 1 Carrion Beetle from a target soul to attack the Crypt Lord's enemies. \n Beetles are permanent but only 5 can be controlled at a time." + " Cooldown: " + string(spell_e_cooldown_max / room_speed) + "\n Mana cost: " + string(spell_e_mana_cost)}
	case SPELLS.dark_ritual : return function() {return "Sacrifices an allied unit for mana\n Coolworn : " + string(cooldown)
		 + "\n Mana cost: " + string(mana_cost)}
	case SPELLS.earthshatter : return function() {return "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
		 + "Mana: " + string(mana_cost) + "\n"
		 + "Cooldown: " + string(cooldown_max) + "\n"
		 +"Damage: " + string(earthshatter_damage_per_distance[|0]) + ", " + string(earthshatter_damage_per_distance[|1]) + ", " + string(earthshatter_damage_per_distance[|2]) + "\n"
		 + "Stun duration: " + string(earthshatter_stun_per_distance[|0]) + ", " + string(earthshatter_stun_per_distance[|1]) + ", " + string(earthshatter_stun_per_distance[|2])
	case SPELLS.freeze : return function() {return "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: " + string(spell_q_cooldown_max / room_speed)
		 + "\n Mana cost: " + string(mana_cost) + " Duration: " + string(duration) + " Range: " + string(1)}
	case SPELLS.frost_armor : return function() {return  "Improves and applies frost element to armor of unit" + string(spell_w_cooldown_max/room_speed)
 + "\n Mana cost: " + string(spell_w_mana_cost)}
	case SPELLS.golden_dragon : return function() {return "summons a powerful golden dragon"
		 + "\n Cooldown: " + string(cooldown / 60)
		 + "\n Mana Cost: " + string(list_spell_r_cost[|0]) + ", " + string(list_spell_r_cost[|1])) + ", " + string(list_spell_r_cost[|2])
		 + "\n Duration: " + string(duration)}
	case SPELLS.kawarimi_no_jutsu : return function() {
		return "Swaps the position of two targeted friendly units.\n" + "Mana_cost: " + string(mana_cost) + "\n"
 + "Cooldown: " + string(cooldown)
	}
	case SPELLS.sleep : return "Makes target enemy fall asleep, Cooldown: "+string(cooldown)
+"\n Mana cost: " + string(mana_cost)
	case SPELLS.carrion_swarm : return "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: "+string(spell_q_cooldown_max/room_speed)
+"\n Mana cost: " + string(mana_cost)
	case SPELLS.ninjago : "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies" //Spinjitzu is a close-combat martial arts technique in the world of Ninjago. It involves the user tapping into their inner balance while spinning rapidly,
		 + "\n Cooldown: " + string(cooldown)
		 + "\n Mana Cost: " + string(mana_cost)
		 + "\n Duration: " + string(duration)
		 + "\n Damage: " + "Damage x " + string(damage_multiplier)
	case SPELLS.holy_light : "A holy light that can heal a friendly living unit."
		 + "\n Cooldown: " + string(cooldown)
		 + "\n Mana Cost: " + string(mana_cost)
		 + "\n Heal Amount: " + string(heal_amount)
	case SPELLS.spell_shield : return "Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
		 + "\n Cooldown: " + string(spell_w_cooldown_max/60)
		 + "\n Damage reduction: " + string(floor(100 * damage_reduction)) + " %"
		 + "\n Mana Cost: " + string(mana_cost)
		 + "\n Duration: " + string(duration)
}
}

function performNinjago() {
	cooldown_current = cooldown
	owner.mana -= mana_cost
	var var_ninjago = instance_create_layer(owner.x, owner.y, "air", obj_ninjago)
	var_ninjago.creator = owner
	var_ninjago.alarm[0] = duration * room_speed
}

function canPerformNinjago() {
	return lvl > 0 and owner.mana >= mana_cost and cooldown_current == 0
}

function performNilsW() {
		cooldown_current = cooldown
		owner.mana -= mana_cost
		activated = 1
		owner.alarm[1] = duration * room_speed
}

function canPerformNilsW() {
	return owner.mana >= mana_cost and cooldown_current == 0 and lvl > 0 and !activated
}

function perfromFreeze(argument0) {
	if(lvl > 0) {
		var cursorSet = cursor_sprite != spr_freeze_cursor ? cr_none : cr_default
		cursor_sprite ? spr_freeze_cursor : -1
		window_set_cursor(cursorSet)
	}
}

function performHolyLight(var_selected) {
	if(spell_q.lvl > 0) {
		var cursorSet = cursor_sprite != spr_holy_light_cursor ? cr_none : cr_default
		cursor_sprite = cursor_sprite != spr_holy_light_cursor ? spr_holy_light_cursor : -1
		window_set_cursor(cursorSet)
	}
}
	
function performDefend() {
	if(global.player.footman_has_defend_upgrade) {
		with(owner) {
			footman_is_defending =! footman_is_defending
			scr_update_damage_reduction()
		}
	}
}

function performBuildBarrack() {
		window_set_cursor(cr_none)
		cursor_sprite = spr_spade_cursor
		with(owner) {
			to_build_with_spade = obj_human_barrack
			exit;
		}
}

function performBuldArcaneSanctum() {
		window_set_cursor(cr_none)
		cursor_sprite = spr_spade_cursor
		with(owner) {
			to_build_with_spade = obj_arcane_sanctum
			exit;
		}
}

function performInvisibility(var_selected) {
	if(global.player.sorceress_has_invisibility) {
		var cursorSet = cursor_sprite != spr_invisibility_cursor ? cr_none : cr_default
		cursor_sprite = cursor_sprite != spr_invisibility_cursor ? spr_invisibility_cursor
		window_set_cursor(cursorSet)
	}
}

function performSlow() {
		var cursorSet = cursor_sprite != spr_slow_cursor ? cr_none : cr_default
		cursor_sprite = cursor_sprite != spr_slow_cursor ? spr_slow_cursor : -1
		window_set_cursor(cr_default)
}

function performHeal(){
	var cursorSet = cursor_sprite != spr_heal_cursor ? cr_none : cr_default
	cursor_sprite = cursor_sprite != spr_heal_cursor ? spr_heal_cursor : -1
	window_set_cursor(cursorSet)
}

function perform_w_unit_producing_building() {
		if(!unfinished) {
			scr_recruit_unit(w_object)
		}
}

function levelUpSpellShield() {
	global.hud.gui_display_abilities = 0
	lvl += 1
	damage_reduction = damageReductionFromLvl(lvl)
	mana_cost = manaCostFromLvl(lvl)
	number_of_ability_points -= 1
}

levelUpKaton() {
	global.hud.gui_display_abilities = 0
	lvl += 1
	damage = damageFromLvl[lvl - 1]
	mana_cost = manaCostFromLvl[spell_w_lvl - 1]
	number_of_ability_points -= 1
}

enum SPELLS {
	katon_gokakyu_no_jutsu,
	impale,
	kawarimi_no_jutsu,
	holy_light,
	spiked_carapace,
	frost_nova,
	spell_shield,
	earthshatter,
	carrion_beetles,
	freeze,
	locust_swarm,
	ninjago,
	golden_dragon,
	carrion_swarm,
	sleep,
	vampiric_aura,
	frost_nova,
	frost_armor,
	dark_ritual,
	defend,
	build,
	slow,
	heal
}









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
 