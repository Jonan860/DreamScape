function scr_mouse_on_learn_katon_gokakuy_no_jutsu_button() {
	return learn_button_width + learn_spell_q_button_width < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width and 0 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < learn_spell_w_button_height
}

function scr_mouse_on_learn_kawarimi_no_jutsu_button() {
	return learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width < mouse_x and mouse_x < learn_button_width + learn_spell_q_button_width + learn_spell_w_button_width + learn_spell_e_button_width and 0 < mouse_y and mouse_y < learn_spell_e_button_height
}

function scr_mouse_on_learn_button() {
	return hud_abilities_x - hud_abilities_x/2 < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < hud_abilities_x + spell_button_width/2 and hud_abilities_y - spell_button_height/2 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < hud_abilities_y + spell_button_height / 2
}

function scr_mouse_on_freeze_button() {
	return (learn_button_width < mouse_x - camera_get_view_x(view_camera[0]) and mouse_x - camera_get_view_x(view_camera[0]) < learn_button_width + learn_spell_q_button_width and 0 < mouse_y - camera_get_view_y(view_camera[0]) and mouse_y - camera_get_view_y(view_camera[0]) < learn_spell_q_button_height)
}

katon_gokakyu_no_jutsu = {
	scrPerform : function() {
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

function spellToAnimator(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return obj_katon_gokakyu_no_jutsu
	}
}

function spellToCooldown(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return 20
		case SPELLS.impale : return 20
		case SPELLS.earthshatter : return 60
		case SPELLS.frost_nova : return 20
		case SPELLS.holy_light : return 20
		case SPELLS.kawarimi_no_jutsu : return [20, 10, 5]
		case SPELLS.spell_shield : return 10
		case SPELLS.spiked_carapace : return noone;	
		case SPELLS.freeze : return 20
		case SPELLS.locust_swarm : return 180
		case SPELLS.ninjago : return 20
		case SPELLS.golden_dragon : return 20
		case SPELLS.carrion_beetles : return 1
		case SPELLS.frost_armor : return 20
		case SPELLS.dark_ritual : return 1
		case SPELLS.slow : return 3
		case SPELLS.invisibility : return 1
		case SPELLS.curse : return 3
		case SPELLS.heal : return 1.5
		default : return noone
	}
}





function spellToAmount(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return [20, 30, 45]
		case SPELLS.impale : return 1000
		case SPELLS.spiked_carapace :  [[15/100, 25/100, 35/100], [18/100, 30/100, 42/100]]
		case SPELLS.frost_nova : return [30, 45, 60]
		case SPELLS.earthshatter : 
			var mapp = ds_map_create()
			ds_map_add(mapp, "damage", [60, 30, 15])
			ds_map_add(mapp, "stun", [10, 5, 2])
			return mapp  // per distance
		case SPELLS.locust_swarm : return 1
		case SPELLS.ninjago : return [100, 200, 300]
		case SPELLS.vampiric_aura : return [15/100, 30/100, 45/100]
		case SPELLS.frost_armor : return
		case SPELLS.dark_ritual : return [0.33, 0.66, 1]
		case SPELLS.defend : return 0.5
		case SPELLS.slow : return [30/100]
		case SPELLS.heal : return [6]
		case SPELLS.curse : return ln(2/3) / ln(1/2)
		case SPELLS.holy_light : return [30, 60, 90]
		case SPELLS.spell_shield : return [200, 400, 600] //max health
	}
}

function spellToRange(spell) {
	switch(spell) {
		case SPELLS.carrion_beetles : return 4
		case SPELLS.dark_ritual : return 5
		case SPELLS.frost_nova : return 5
		case SPELLS.sleep : return 4
		case SPELLS.slow : return 4
		case SPELLS.freeze : return 1
		case SPELLS.raise : return 4
		case SPELLS.invisibility : return 4
		case SPELLS.heal : return 2
		case SPELLS.curse : return 4
		case SPELLS.earthshatter : return 4
		case SPELLS.golden_dragon : return 1
		case SPELLS.holy_light : return 4
		case SPELLS.spell_shield : return 1
	}
}

function spellToManaCosts(spell) {
	switch(spell) {
		case SPELLS.impale : return [30, 45, 60];
		case SPELLS.frost_nova : return [40, 80, 120]
		case SPELLS.holy_light : return [40, 45, 60]
		case SPELLS.kawarimi_no_jutsu : return []
		case SPELLS.spell_shield : return [15, 30, 40]
		case SPELLS.spiked_carapace : return [30, 45, 60]
		case SPELLS.earthshatter : return [80]
		case SPELLS.carrion_beetles : return [25, 25, 25]
		case SPELLS.katon_gokakyu_no_jutsu : return [30, 45, 60]
		case SPELLS.freeze : return [30, 45, 60]
		case SPELLS.locust_swarm : return [60]
		case SPELLS.frost_armor : return [30, 30, 30]
		case SPELLS.dark_ritual : return [0, 0, 0] 
		case SPELLS.carrion_swarm : return [30, 45, 60]
		case SPELLS.sleep : return [30, 45, 60]
		case SPELLS.vampiric_aura : return [0, 0, 0]
		case SPELLS.slow : return 25
		case SPELLS.raise : return 40
		case SPELLS.heal : return 4
		case SPELLS.curse : return 25
		case SPELLS.invisibility : return 15
		case SPELLS.golden_dragon : return 80
		case SPELLS.ninjago : return [30, 60, 90]
	}
}

function spellToAbilitiesInfo(spell) {
	switch(spell) {
	case SPELLS.katon_gokakyu_no_jutsu : return  "Hurls an fireball towards the north,\n damaging everything in its path\n" + "level: 1,2,3 " + "Damage = " + "Damage x " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])
 + "\n Mana cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1])+ ", " + string(mana_cost[2])

	case SPELLS.impale : return 
	case SPELLS.kawarimi_no_jutsu : return "Swaps the position of two targeted friendly units.\n" + "level: 1, 2, 3" + "Cooldown: " + string(cooldown[0]) + ", " + string(cooldown[1]) + ", " + string(cooldown[2])

	case SPELLS.holy_light : return "A holy light that can heal a friendly living unit."
 + "\n level: 1, 2, 3 Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
 + "\n Heal Amount: " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])
	case SPELLS.spiked_carapace : return ""
	case SPELLS.spell_shield : return "Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
		 + "\n level: 1, 2, 3"
		 + "\n Cooldown: " + string(cooldown)
		 + "\n Damage reduction: " + string(floor(100 * amount[0])) + string(floor(100 * amount[1])) + string(floor(100 * amount[2]))
		 + "\n Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
		 + "\n Duration: " + string(duration)
	case SPELLS.earthshatter : return "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
	 + "Mana: " + string(mana_cost) + "\n"
	 + "Cooldown: " + string(cooldown) + "\n"
	 + "Damage: " + string(amount[?"damage"][0]) + ", " + string(amount[?"damage"][1]) + ", " + string(amount[?"damage"][2]) +"\n"
	 + "Stun duration: " + string(amount[?"stun"][0]) + ", " + string(amount[?"stun"][1]) + ", " + string(amount[?"damage"][2])

	case SPELLS.carrion_beetles : return ""
	case SPELLS.freeze : return ""
	case SPELLS.locust_swarm : return ""
	case SPELLS.ninjago : return "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies"
		+ "\n Cooldown: " + string(cooldown)
		+ "\n Mana Cost: " + string(mana_cost[1]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
		+ "\n Duration: " + string(duration)
		+ "\n Damage: " + "Damage x " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])

	case SPELLS.golden_dragon : return "Summons a powerful golden dragon"
		+ "\n Cooldown: " + string(cooldown)
		+ "\n Mana Cost: " + string(mana_cost)
		+ "\n Duration: " + string(duration)
	case SPELLS.carrion_swarm : return ""
	case SPELLS.sleep : return ""
	case SPELLS.vampiric_aura : return ""
	case SPELLS.frost_nova : return ""
	case SPELLS.frost_armor : return ""
	case SPELLS.dark_ritual : return ""
	case SPELLS.defend : return ""
	case SPELLS.build : return ""
	case SPELLS.slow : return ""
	case SPELLS.heal : return "Heals a target friendly non-mechanical wounded unit for " + string(amount) + " hit points"
		 + "\n" + "Cooldown: " + string(cooldown)
		 + "\n" + "Mana cost " + string(mana_cost)
		 + "\n" + "Range: " + string(range)	
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
		case SPELLS.slow : return 100
		case SPELLS.invisibility : return 100
		case SPELLS.raise : return 100
		case SPELLS.curse : return 100
		case SPELLS.heal : return 100
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
		case SPELLS.locust_swarm : return spr_locust_swarm_icon
		case SPELLS.frost_armor : return spr_frost_armor_icon
		case SPELLS.dark_ritual : return spr_dark_ritual_icon
		case SPELLS.carrion_swarm : return spr_carrion_swarm_icon
		case SPELLS.sleep : return spr_sleep_icon
		case SPELLS.vampiric_aura : return spr_vampiric_aura_icon
		case SPELLS.heal : return spr_heal_icon
		case SPELLS.slow : return spr_slow_icon
		case SPELLS.invisibility : return spr_invisibility_icon
		case SPELLS.curse : return 	spr_curse_icon
	}
}

function spellToDuration(spell) {
	switch(spell) {
		case SPELLS.impale : return 
		case SPELLS.frost_nova : return [4.5, 1.5] //[total, aftereffect]
		case SPELLS.holy_light : return 
		case SPELLS.kawarimi_no_jutsu : return 
		case SPELLS.spell_shield : return [5]
		case SPELLS.spiked_carapace : return 
		case SPELLS.earthshatter : return 
		case SPELLS.carrion_beetles : return 
		case SPELLS.katon_gokakyu_no_jutsu : return 
		case SPELLS.freeze : return [15, 30, 45]
		case SPELLS.ninjago : return 10
		case SPELLS.golden_dragon : return 180
		case SPELLS.locust_swarm : return 30
		case SPELLS.carrion_swarm : return 20
		case SPELLS.sleep : return [20, 40, 60]
		case SPELLS.vampiric_aura : return 1
		case SPELLS.slow : return 60
		case SPELLS.invisibility : return 60
		case SPELLS.curse : return 60
		case SPELLS.heal : return 0.5

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


function spellToInfo(spell) {
	switch(spell) {
		case SPELLS.impale : return "impale"
		case SPELLS.frost_nova : return "Causes ice damage on enemy units within an area\n Cooldown : " + string(spell_q.cooldown)
		 + "\n Mana cost: " + string(mana_cost)
		case SPELLS.carrion_beetles : return "The Crypt Lord progenerates 1 Carrion Beetle from a target soul to attack the Crypt Lord's enemies. \n Beetles are permanent but only 5 can be controlled at a time." + " Cooldown: " + string(cooldown) + "\n Mana cost: " + string(mana_cost)
		case SPELLS.dark_ritual : return "Sacrifices an allied unit for mana\n Coolworn : " + string(cooldown)
			 + "\n Mana cost: " + string(mana_cost)
		case SPELLS.earthshatter : return "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
			 + "Mana: " + string(mana_cost) + "\n"
			 + "Cooldown: " + string(cooldown) + "\n"
			 +"Damage: " + string(amount[?"damage"][0]) + ", " + string(amount[?"damage"][1]) + ", " + string(amount[?"damage"][2]) + "\n"
			 + "Stun duration: " + string(amount[?"stun"][0]) + ", " + string(amount[?"stun"][1]) + ", " + string(amount[?"stun"][2])
		case SPELLS.freeze : return "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: " + string(cooldown)
			 + "\n Mana cost: " + string(mana_cost) + " Duration: " + string(duration) + " Range: " + string(1)
		case SPELLS.frost_armor : return "Improves and applies frost element to armor of unit" + string(cooldown)
	 + "\n Mana cost: " + string(mana_cost)
		case SPELLS.golden_dragon : return "summons a powerful golden dragon"
			 + "\n Cooldown: " + string(cooldown)
			 + "\n Mana Cost: " + string(mana_cost)
			 + "\n Duration: " + string(duration)
		case SPELLS.kawarimi_no_jutsu :
			return "Swaps the position of two targeted friendly units.\n" + "Mana_cost: " + string(mana_cost) + "\n"
			+ "Cooldown: " + string(cooldown)
		case SPELLS.sleep : return "Makes target enemy fall asleep, Cooldown: "+string(cooldown)
			+ "\n Mana cost: " + string(mana_cost)
		case SPELLS.carrion_swarm : return "Freezes the target unit making it invulnarable and unable to attack.\n Cooldown: "+string(cooldown)
			+ "\n Mana cost: " + string(mana_cost)
		case SPELLS.ninjago : return "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies"
			+ "\n Cooldown: " + string(cooldown)
			+ "\n Mana Cost: " + string(mana_cost)
			+ "\n Duration: " + string(duration)
			+ "\n Damage: " + "Damage x " + string(amount)
		case SPELLS.holy_light : return "A holy light that can heal a friendly living unit."
			+ "\n Cooldown: " + string(cooldown)
			+ "\n Mana Cost: " + string(mana_cost)
			+ "\n Heal Amount: " + string(amount)
		case SPELLS.spell_shield : return "Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
			+ "\n Cooldown: " + string(cooldown)
			+ "\n Damage reduction: " + string(floor(100 * amount[max(lvl - 1, 0)])) + " %"
			+ "\n Mana Cost: " + string(mana_cost)
			 + "\n Duration: " + string(duration)
		case SPELLS.spiked_carapace : return "The Crypt Lord forms barbed layers of chitinous armor \n that increases its defense and returns damage to enemy melee attackers., Cooldown: " + string(cooldown)
			 + "\n Mana cost: " + string(mana_cost[0])
		case SPELLS.locust_swarm : return "Creates a swarm of angry locusts that bite and tear at nearby enemy units. \n As they chew the enemy flesh, they convert it into a substance that restores hit points to the Crypt Lord when they return. " + "Cooldown: " + string(cooldown) + "\n Mana cost: " + string(mana_cost[0])
		case SPELLS.vampiric_aura : return "All friendly melee units gain " + "45" + "percentage of damage caused, back as hit points when they hit a unit."   ///string(ds_list_find_value(list_vampiric_aura_bonus_in_procentage,spell_e_lvl-1)) 
		case SPELLS.heal : return "Heals a target friendly non-mechanical wounded unit for " + string(amount) + " hit points"
			+ "\n" + "Cooldown: " + string(cooldown)
			+ "\n" + "Mana cost " + string(mana_cost)
			+ "\n" + "Range: " + string(range)
		case SPELLS.slow : return "Slows targets movement and attack speed by " + string(1/3 * 100) + "." + "%" + "\n Duration:" 
			+ string(60) + " seconds." + " Range:" + string(4) 
			+ "Mana cost: " + string(25)
		case SPELLS.katon_gokakyu_no_jutsu : return "Hurls an fireball towards the north,\n damaging everything in its path\n Cooldown: " + string(cooldown)
			+ "\n Mana cost: " + string(mana_cost) + "\n Damage: " + string(amount[max(lvl - 1, 0)])
	}
}

function spellToSummon(spell) {
	switch(spell) {
		case SPELLS.raise : return obj_skeleton
		case SPELLS.carrion_beetles : return obj_carrion_beetle
	}
}

function spellToAi(spell) {
	switch(spell) {
		case SPELLS.slow : return 
	}
	scr_sorceress_slow_auto_cast_ai()
}

function scr_sorceress_slow_auto_cast_ai() {
	var list_slow_target_within_range = scr_find_enemies_within_range(slow.range)
	if(ds_list_size(list_slow_target_within_range) > 0) { 
		with(scr_find_best_procentage_debuff_target_from_list(list_slow_target_within_range, slow)) {			
			other.scr_slow_unit(id)
			other.mana -= other.slow.mana_cost
			other.spell_q.cooldown_current = other.spell_q.cooldown
			other.action_bar = 0
		}
	}
}

function spellToPerform(spell) {
	switch(spell) {
		case SPELLS.build : return 
		case SPELLS.carrion_beetles : return method(undefined, carrion_beetle_perform)
		case SPELLS.carrion_swarm : return 
		case SPELLS.dark_ritual : return method(undefined, dark_sacrifice_perform)
		case SPELLS.defend : return method(undefined, performDefend)
		case SPELLS.earthshatter : return method(undefined, scr_earthshatter_impact_perform)
		case SPELLS.freeze : return method(undefined, freezePerform)
		case SPELLS.frost_nova : return method(undefined, scr_frost_nova_perform)
		case SPELLS.golden_dragon : return 
		case SPELLS.heal : return method(undefined, healPerform)
		case SPELLS.holy_light : return method(undefined, holyLightPerform)
		case SPELLS.impale : return
		case SPELLS.katon_gokakyu_no_jutsu : return method(undefined, perform)
		case SPELLS.kawarimi_no_jutsu : return method(undefined, perform)
		case SPELLS.locust_swarm : return method(undefined, scr_locust_perform)
		case SPELLS.ninjago : return method(undefined, performNinjago)
		case SPELLS.sleep : return method(undefined, sleepPerform)
		case SPELLS.slow : return method(undefined, slowPerform)
		case SPELLS.spell_shield : return 
		case SPELLS.spiked_carapace : return
		case SPELLS.vampiric_aura : return 
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

function performSpellShield() {
		cooldown_current = cooldown
		owner.mana -= mana_cost
		activated = 1
		owner.alarm[1] = duration * room_speed
}

function canPerformSpellShield() {
	return owner.mana >= mana_cost and cooldown_current == 0 and lvl > 0 and !activated
}
	
function freezePerform(perputrator, victim) {
	with(victim) {
		scr_apply_debuff(global.freeze_struct, perputrator.spell_q.lvl)
		action_bar = 0 //kanske inte?
	}
}

function revivePerform() {
	if(phase == "reviving") {
			with(instance_position(x, y, obj_soul_hero)) {
				if(revival_time_left_sec>0) {
					revival_time_left_sec -= 1/room_speed
				} else {
					var var_hero = var_soul_hero.instance
				    with(var_hero) {
						scr_make_room_for_instance_on_tile(other.tile, altitude)
						scr_move_to_tile(other.tile)
						phase = "idle"
						action_bar = 0 //2021
					}
					other.phase = "idle"
					instance_destroy(id)
				}
			}
	}
}

function sleepPerform(var_target) {
	with(var_target) {
		phase = "sleep"
		with(obj_unit) {
			if(target = var_target) {
				target = noone
				phase = owner == global.enemy ? "movement" : "idle"
				action_bar = owner == global.enemy ? action_bar : 0
				destination = noone
			}
		}
		target = noone
		destination = noone
		sleep_timer = other.list_sleep_time_per_lvl[|other.spell_w_lvl - 1]
	}
}

function slowPerform(slow_target) {
	slow_target.slowed.apply()
}

function cloakPerform(targeto) {
	with(targeto) {
		var homeland = tile.occupants[|altitude]
		with(tile) {
			scr_ds_list_remove_value(homeland, targeto)
			ds_list_add(invisibles_list, targeto)
		}
		scr_make_all_unit_detarget(targeto)
		altitude = "invisible"
		phase = "idle"
		action_bar = 0
	}
}

function invisiblePerform(var_unit){
	cloakPerform(var_unit)
	with(var_unit) {
		invisible_time_left = global.invisibility_struct.duration
		invisible = 1
	}
}

function healPerform() {
	with(target) {
		HP = min(max_HP, HP + global.heal_struct.heal_amount)
		heal_animation_time_left_in_sec = global.heal_struct.animation_time
	}
}

function raisePerform(soul_to_raise) {
	scr_make_room_for_instance_on_tile(soul_to_raise.tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_skeleton, soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}

function holyLightPerform(perputrator, target) {
	with(target) {
		HP = min(HP + perputrator.spell_q.heal_amount, max_HP)
		holy_lighted = 1
		alarm[2] = global.spell_q_duration * room_speed
	}
}
	
function cursePerform(curse_target) {
	with(curse_target) {
		scr_apply_debuff(global.curse_struct, 0)
		scr_update_accuracy()
	}
}

heal_icon_animation_index = 0
heal_icon_animation_speed = 8

function perfromFreeze(argument0) {
	if(lvl > 0) {
		var cursorSet = cursor_sprite != spr_freeze_cursor ? cr_none : cr_default
		cursor_sprite = cursor_sprite != spr_freeze_cursor ? spr_freeze_cursor : -1
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
			is_defending = !is_defending
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
		cursor_sprite = cursor_sprite != spr_invisibility_cursor ? spr_invisibility_cursor : -1
		window_set_cursor(cursorSet)
	}
}

function performSlow() {
		var cursorSet = cursor_sprite != spr_slow_cursor ? cr_none : cr_default
		cursor_sprite = cursor_sprite != spr_slow_cursor ? spr_slow_cursor : -1
		window_set_cursor(cursorSet)
}

function performHeal() {
	var cursorSet = cursor_sprite != spr_heal_cursor ? cr_none : cr_default
	cursor_sprite = cursor_sprite != spr_heal_cursor ? spr_heal_cursor : -1
	window_set_cursor(cursorSet)
}

function scr_frost_nova_perform() {
	with(obj_lich) {
		if(phase == "frost nova" and time_until_frost_nova_sec <= 0) {
			scr_frost_nova_damage()
			time_until_frost_nova_after_effect_end_sec = total_time_frost_nova_after_effect_end_sec
			exit;
		}
	}
}

function perform_w_unit_producing_building() {
		if(!unfinished) {
			scr_recruit_unit(w_object)
		}
}

rightPressedSlow = function() {
	autocast_is_on = !autocast_is_on
}
rightPressedHeal = function() {
	autocast_is_on = !autocast_is_on
}

function rightPressedearthquakeSelected(var_selected_unit, clicked_tile) {
	if(cursor_sprite = spr_earthquake_cursor) {
		if(cooldown_current == 0 and scr_get_distance(global.tile_selected, clicked_tile) <= range and owner.mana >= owner.mana_cost and lvl > 0) {
			with(owner) {
				mana -= mana_cost
				cooldown_current = cooldown
				scr_start_earthshatter_tile(clicked_tile)
				exit;
			}
		}
	}
}

rightPressedKawarimiSelected = function() {
	if(owner.mana >= mana_cost and lvl > 0) {
		if(unit_to_kawarimi1 == noone and owner.mana >= mana_cost) {
			var var_unit_to_kawarimi1 = clicked_tile.grounds_list[|0]
			if(object_is_ancestor(var_unit_to_kawarimi1.object_index, obj_unit)) {
				unit_to_kawarimi1 = var_unit_to_kawarimi1
			}
		} else if(owner.mana >= mana_cost and cooldown_current == 0) {	
		var var_unit_to_kawarimi2 = clicked_tile.grounds_list[|0]
		if(object_is_ancestor(var_unit_to_kawarimi2.object_index, obj_unit)) {
			unit_to_kawarimi2 = var_unit_to_kawarimi2
			if(unit_to_kawarimi1 != unit_to_kawarimi2) {
				cooldown_current = cooldown
				owner.mana -= mana_cost
				action_bar = 0
				scr_swap_tile(unit_to_kawarimi1, unit_to_kawarimi2)
			}
			unit_to_kawarimi1 = noone
			unit_to_kawarimi2 = noone
			}
		}
	}
}

function createSpellSub(spellEnum) constructor {
	amount = spellToAmount(spellEnum)
	spellHealth = spellToSpellHealth(spellEnum)
	range = spellToRange(spellEnum)
	duration = spellToDuration(spellEnum)
	activated = 0
	mana_cost = spellToManaCosts(spellEnum)
	icon = spellToIcon(spellEnum)
	animator = spellToAnimator(spellEnum)
	cooldown = spellToCooldown(spellEnum)
	cooldown_current = 0
	lvl = 0
	autocast = 0
}

function createSpell(spellEnum) {
	var spell = new createSpellSub(spellEnum)
	with(spell) {
		info = spellToInfo(spellEnum)
		abilitiesInfo = spellToAbilitiesInfo(spellEnum)
	}
	return spell
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
	frost_armor,
	dark_ritual,
	defend,
	build,
	slow,
	heal,
	revive,
	invisibility,
	curse,
	raise
}


global.invisibililty_upgrade_struct = {
	max_mana_multiplicator : 1.25,
	mana_regen_multiplicator : 1.25,
	icon : spr_invisibility_icon,
}



function carrion_beetle_perform(soul_to_raise) {
	scr_make_room_for_instance_on_tile(soul_to_raise.tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_carrion_beetle, soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}

function dark_sacrifice_perform(var_sacrifice) {
	var mana_conversion = amount[|lvl - 1]
	mana = min(max_mana, mana + var_sacrifice.HP * mana_conversion)
	with(var_sacrifice) {
		phase = "sacrificed"
		time_until_dark_ritual_sacrifice_sec = other.id.dark_ritual_duration_sec
	}
}

function scr_locust_perform() {
		if(activated) {
			if(active_locusts < max_active_locusts and time_until_next_locust <= 0) {
				var locust = instance_create_depth(x, y, 0, obj_locust)
				with(locust) {
					owner = owner.id
				}
				active_locusts += 1
				time_until_next_locust = locust_spawn_interval_sec
			} else {
				time_until_next_locust = max(0, time_until_next_locust - 1/room_speed)
			}
			time_left -= 1/room_speed
			if(time_left <= 0) {
				activated = 0
			}
		}
}

total_time_to_earthshatter_impact = 0
time_until_earthshatter_impact = 0
earthshatter_aoe = 2
earthshatter_stun_per_distance = ds_list_create()
ds_list_add(earthshatter_stun_per_distance, 10, 5, 2)

		
function scr_perform_earthshatter_jump() {
	if(point_distance(x, y, target.x, target.y) < 10) {
			scr_earthshatter_impact_perform()
	} else {
		image_xscale = spr_width / sprite_get_width(sprite_index) * (1 + 4/total_time_to_earthshatter_impact * time_until_earthshatter_impact * (total_time_to_earthshatter_impact - time_until_earthshatter_impact))
		image_yscale = spr_height / sprite_get_height(sprite_index) * (1 + 4/total_time_to_earthshatter_impact * time_until_earthshatter_impact * (total_time_to_earthshatter_impact - time_until_earthshatter_impact))
	}
}