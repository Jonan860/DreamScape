

function spellToAnimator(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return obj_katon_gokakyu_no_jutsu
		case SPELLS.death_coil : return obj_death_coil_animator
		case SPELLS.kawarimi_no_jutsu : return obj_kawarimi_animator 
		case SPELLS.buildFootman : return obj_footman
		case SPELLS.buildArcher : return obj_elven_archer
		case SPELLS.buildPriest : return obj_priest
		case SPELLS.buildSorceress : return obj_sorceress
		case SPELLS.earthshatter : return obj_earthShatter_animator
		case SPELLS.buildArcaneSanctum : return obj_arcane_sanctum
		case SPELLS.buildBarracks : return obj_human_barrack
		case SPELLS.dispel : return obj_dispel_animator
		case SPELLS.revive : return obj_revive_animator
		case SPELLS.buildInvisibility : return obj_sorceress_invisibility_upgrade
		case SPELLS.buildDispel : return obj_priest_dispel_upgrade
		case SPELLS.buildImprovedBows : return obj_improved_bows_upgrade
		case SPELLS.buildDefend	: return obj_footman_defend_upgrade
		case SPELLS.unholy_aura : return obj_unholy_aura_animator
		case SPELLS.kai : return obj_kai_animator
		case SPELLS.iryo_ninjutsu : return obj_iryo_ninjutsu_animator
		case SPELLS.shannaro : return obj_shannaro_animator
	}
}

function spellToCooldown(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return 20
		case SPELLS.death_coil: return 20
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
		case SPELLS.golden_dragon : return 60
		case SPELLS.carrion_beetles : return 1
		case SPELLS.frost_armor : return 20
		case SPELLS.dark_ritual : return 20
		case SPELLS.slow : return 3
		case SPELLS.invisibility : return 1
		case SPELLS.curse : return 3
		case SPELLS.heal : return 2
		case SPELLS.buildArcaneSanctum : return 0
		case SPELLS.buildBarracks : return 0
		case SPELLS.dispel : return 20
		case SPELLS.sleep : return 4
		case SPELLS.shannaro : return 20
		default : return noone
	}
}

function spellToAmount(spell) {
	switch(spell) {
		case SPELLS.katon_gokakyu_no_jutsu : return [50, 90, 120]
		case SPELLS.impale : return 1000
		case SPELLS.spiked_carapace :  return [[15/100, 25/100, 35/100], [18/100, 30/100, 42/100]]
		case SPELLS.frost_nova : return [60, 90, 120]
		case SPELLS.earthshatter : 
			var mapp = ds_map_create()
			ds_map_add(mapp, "damage", [240, 120, 60]) //acc = 0.3
			ds_map_add(mapp, "stun", [10, 5, 2])
			return mapp  // per distance
		case SPELLS.locust_swarm : return 1
		case SPELLS.ninjago : return [100, 200, 300]
		case SPELLS.vampiric_aura : return [15, 30, 45]
		case SPELLS.frost_armor : return;
		case SPELLS.dark_ritual : return [0.33, 0.66, 1]
		case SPELLS.defend : return 0.5
		case SPELLS.slow : return [30/100]
		case SPELLS.heal : return [4]
		case SPELLS.curse : return ln(2/3) / ln(1/2)
		case SPELLS.holy_light : return [30, 60, 90]
		case SPELLS.spell_shield : return [200, 400, 600] //max health
		case SPELLS.buildFootman : return 100
		case SPELLS.buildSorceress : return 100
		case SPELLS.buildPriest : return 100
		case SPELLS.buildArcher : return 100
		case SPELLS.buildDefend : return 150
		case SPELLS.buildDispel : return 150
		case SPELLS.buildImprovedBows : return 150
		case SPELLS.buildMoneyTree : return 600
		case SPELLS.buildBarracks : return 100
		case SPELLS.buildArcaneSanctum : return 100
		case SPELLS.buildInvisibility : return 150
		case SPELLS.dispel : return 50
		case SPELLS.death_coil : return [30, 60, 90]
		case SPELLS.unholy_aura : return [0.25, 0.5, 0.75]
		case SPELLS.iryo_ninjutsu : return [2, 4, 6] //per sec
		case SPELLS.shannaro : 
			var mapp = ds_map_create()
			ds_map_add(mapp, "damage", [20, 40, 60]) //acc = 3
			ds_map_add(mapp, "stun", [1, 1, 1])
			ds_map_add(mapp, "distance", [1,2,3])
			return mapp  // per distance
		case SPELLS.kai : return [80, 160, 240]
		default : return noone
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
		case SPELLS.ninjago : return 1
		case SPELLS.vampiric_aura : return 4
		case SPELLS.buildArcaneSanctum : return 1
		case SPELLS.buildBarracks : return 1
		case SPELLS.dispel : return 4
		case SPELLS.death_coil : return 4
		case SPELLS.unholy_aura : return 4
		case SPELLS.iryo_ninjutsu : return 1
		case SPELLS.kai : return 4
		case SPELLS.shannaro : return 1
		default : return noone
	}
}

function spellToPiercing(spell) {
	switch(spell) {
		case SPELLS.death_coil : return 100;
		case SPELLS.shannaro : return 0
	}
}

function spellToManaCosts(spell) {
	switch(spell) {
		case SPELLS.impale : return [30, 45, 60];
		case SPELLS.frost_nova : return [40, 80, 120]
		case SPELLS.holy_light : return [40, 50, 60]
		case SPELLS.kawarimi_no_jutsu : return 20
		case SPELLS.spell_shield : return [15, 30, 40]
		case SPELLS.spiked_carapace : return [30, 45, 60]
		case SPELLS.earthshatter : return 80
		case SPELLS.carrion_beetles : return [25, 25, 25]
		case SPELLS.katon_gokakyu_no_jutsu : return [30, 45, 60]
		case SPELLS.freeze : return [30, 45, 60]
		case SPELLS.locust_swarm : return [60]
		case SPELLS.frost_armor : return [30, 30, 30]
		case SPELLS.dark_ritual : return [5, 10, 15] 
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
		case SPELLS.dispel : return 50
		case SPELLS.death_coil : return [40, 50, 60]
		case SPELLS.kai : return [20, 40, 60]
		case SPELLS.iryo_ninjutsu : return [2,4,6]
		case SPELLS.shannaro : return [20, 40, 60]
		default : return noone
	}
}
function spellToAccuracy(spellEnum) {
	switch(spellEnum) {
		case SPELLS.earthshatter : return 0.3
		case SPELLS.frost_nova  : return 3
		case SPELLS.impale : return 1
		case SPELLS.katon_gokakyu_no_jutsu : return 0.6
		case SPELLS.shannaro : return 3
		default : return 1
	}
}

function spellToCursor(spellenum) {
	switch(spellenum) {
		case SPELLS.freeze : return spr_freeze_cursor
		case SPELLS.kawarimi_no_jutsu : return spr_kawarimi_cursor
		case SPELLS.earthshatter : return spr_earthquake_cursor
		case SPELLS.heal : return spr_heal_cursor
		case SPELLS.buildArcaneSanctum : return spr_spade_cursor
		case SPELLS.buildBarracks : return spr_spade_cursor
		case SPELLS.slow : return spr_slow_cursor
		case SPELLS.holy_light : return spr_holy_light_cursor
		case SPELLS.katon_gokakyu_no_jutsu : return spr_fire_ball_cursor
		case SPELLS.golden_dragon : return spr_golden_dragon_cursor
		case SPELLS.invisibility : return spr_invisibility_cursor
		case SPELLS.dispel : return spr_dispel_cursor
		case SPELLS.shannaro : return spr_shannaro
		case SPELLS.kai : return spr_kai_animation
		case SPELLS.iryo_ninjutsu : return spr_iryo_ninjutsu
		default : return noone
	}
}

function spellToAbilitiesInfo(spell) {
	switch(spell) {
	case SPELLS.katon_gokakyu_no_jutsu : return  "Hurls an fireball,\n damaging everything in its path\n" + "level: 1,2,3 " + "Damage = " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])
 + "\n Mana cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1])+ ", " + string(mana_cost[2])

	case SPELLS.impale : return 
	case SPELLS.kawarimi_no_jutsu : return "Swaps the position of two targeted friendly units.\n" + "level: 1, 2, 3" + "Cooldown : " + string(cooldown[0]) + ", " + string(cooldown[1]) + ", " + string(cooldown[2])

	case SPELLS.holy_light : return "A holy light that can heal a friendly living unit."
 + "\n level: 1, 2, 3 Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
 + "\n Heal Amount: " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])
	case SPELLS.spiked_carapace : return ""
	case SPELLS.spell_shield : return "Projects a magical barrier, reducing incoming damage on the hero and surrounding units for a short period."
		 + "\n level: 1, 2, 3"
		 + "\n Cooldown: " + string(getCooldown())
		 + "\n Blocked Damage Cap: " + string(floor(amount[0])) + ", " + string(floor(amount[1])) + ", " + string(floor(amount[2]))
		 + "\n Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
		 + "\n Duration: " + string(duration)
	case SPELLS.earthshatter : return "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
	 + "Mana: " + string(mana_cost) + "\n"
	 + "Cooldown: " + string(getCooldown()) + "\n"
	 + "Damage per range: " + string(amount[?"damage"][0]) + ", " + string(amount[?"damage"][1]) + ", " + string(amount[?"damage"][2]) +"\n"
	 + "Stun duration per range: " + string(amount[?"stun"][0]) + ", " + string(amount[?"stun"][1]) + ", " + string(amount[?"stun"][2])

	case SPELLS.carrion_beetles : return ""
	case SPELLS.freeze : return "Freezes the target unit making it unable to attack.\n cooldown: " + string(getCooldown())
			 + "\n Mana cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2]) + " Duration: " + string(duration[0]) + ", " + string(duration[1]) + ", " + string(duration[2]) + " Range: " + string(1)
	case SPELLS.locust_swarm : return ""
	case SPELLS.ninjago : return "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies"
		+ "\n Cooldown: " + string(getCooldown())
		+ "\n Mana Cost: " + string(mana_cost[1]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
		+ "\n Duration: " + string(duration)
		+ "\n Damage Cap: " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])

	case SPELLS.golden_dragon : return "Summons a powerful golden dragon"
		+ "\n Cooldown: " + string(getCooldown())
		+ "\n Mana Cost: " + string(mana_cost)
		+ "\n Duration: " + string(duration)
	case SPELLS.carrion_swarm : return ""
	case SPELLS.sleep : return ""
	case SPELLS.vampiric_aura : return ""
	case SPELLS.frost_nova : return ""
	case SPELLS.frost_armor : return ""
	case SPELLS.dark_ritual : return ""
	case SPELLS.defend : return ""
	case SPELLS.slow : return ""
	case SPELLS.heal : return "Heals a target friendly non-mechanical wounded unit for " + string(amount) + " hit points"
		 + "\n" + "Cooldown : " + string(getCooldown())
		 + "\n" + "Mana cost " + string(mana_cost)
		 + "\n" + "Range: " + string(range)
	case SPELLS.kai : return "Dispels positive buffs from enemy units, and negative buffs from friendly units. Deals " + string(getAmount) + " dispel damage."
	case SPELLS.iryo_ninjutsu : return "Healing ninjutsu."
 + "\n level: 1, 2, 3 Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
 + "\n Heal Amount: " + string(amount[0]) + ", " + string(amount[1]) + ", " + string(amount[2])
	case SPELLS.shannaro : return "Powerful punch that make your enemy fly away."
	+ "\n level: 1, 2, 3 Mana Cost: " + string(mana_cost[0]) + ", " + string(mana_cost[1]) + ", " + string(mana_cost[2])
	+ "\n damage: " + string(amount[?"damage"][0]) + ", " + string(amount[?"damage"][1]) + ", " + string(amount[?"damage"][2])
	+ "\n distance: " + + string(amount[?"distance"][0]) + ", " + string(amount[?"distance"][1]) + ", " + string(amount[?"distance"][2])

	default : return ""
	}
	
}

//var decloak_info = "Reveals the unit, allowing for additional action"

function spellToSpellHealth(spell) {
	switch(spell) {
		case SPELLS.impale : return;
		case SPELLS.frost_nova : return ;
		case SPELLS.holy_light : return ;
		case SPELLS.kawarimi_no_jutsu : return ;
		case SPELLS.spell_shield : return;
		case SPELLS.spiked_carapace : return ;
		case SPELLS.earthshatter : return ;
		case SPELLS.carrion_beetles : return;
		case SPELLS.katon_gokakyu_no_jutsu : return ;
		case SPELLS.freeze : return 100;
		case SPELLS.slow : return 100;
		case SPELLS.invisibility : return 100;
		case SPELLS.raise : return 100;
		case SPELLS.curse : return 100;
		case SPELLS.heal : return 100;
		default : return noone;
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
		case SPELLS.curse : return spr_curse_icon
		case SPELLS.revive : return spr_resurrection_icon
		case SPELLS.abilities : return spr_abilities_button
		case SPELLS.buildFootman : return spr_footman_icon
		case SPELLS.buildArcher : return spr_elven_archer_icon
		case SPELLS.buildSorceress : return spr_sorceress_icon
		case SPELLS.buildPriest : return spr_priest_icon
		case SPELLS.buildDispel : return spr_dispel_icon
		case SPELLS.buildInvisibility : return spr_invisibility_icon
		case SPELLS.buildDefend : return spr_defend_icon
		case SPELLS.buildImprovedBows : return spr_improved_bows
		case SPELLS.buildBarracks : return spr_human_barracks_icon
		case SPELLS.buildArcaneSanctum : return spr_arcane_sanctum_icon
		case SPELLS.raise : return  spr_raise_icon
		case SPELLS.defend : return spr_defend_icon
		case SPELLS.decloak : return spr_decloak_button
		case SPELLS.dispel : return spr_dispel_icon
		case SPELLS.unholy_aura : return spr_unholy_aura_icon
		case SPELLS.death_pact : return spr_death_pact_icon
		case SPELLS.death_coil : return spr_death_coil_icon
		case SPELLS.iryo_ninjutsu : return spr_iryo_ninjutsu
		case SPELLS.kai : return spr_kai_animation
		case SPELLS.shannaro : return spr_shannaro_icon
		default : return noone
	}
}

function spellToDuration(spell) {
	switch(spell) {
		case SPELLS.impale : return;
		case SPELLS.frost_nova : return [4.5, 1.5] //[total, aftereffect]
		case SPELLS.holy_light : return 1; 
		case SPELLS.kawarimi_no_jutsu : return;
		case SPELLS.spell_shield : return 5
		case SPELLS.spiked_carapace : return;
		case SPELLS.earthshatter : return;
		case SPELLS.carrion_beetles : return;
		case SPELLS.katon_gokakyu_no_jutsu : return;
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
		case SPELLS.dark_ritual : return 2
		case SPELLS.buildBarracks : return 30
		case SPELLS.buildArcaneSanctum : return 30
		case SPELLS.buildSorceress : return 40
		case SPELLS.buildPriest : return 40
		case SPELLS.buildFootman : return 40
		case SPELLS.buildArcher : return 40
		case SPELLS.buildDefend : return 30
		case SPELLS.buildInvisibility : return 30
		case SPELLS.buildDispel : return 30
		case SPELLS.buildImprovedBows : return 30
		case SPELLS.revive : return 20
		default : return noone
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
		case SPELLS.buildFootman : return "Build Footman"
		case SPELLS.buildArcher : return "Build Archer"
		case SPELLS.buildPriest : return "Build Priest"
		case SPELLS.buildSorceress : return "Build Sorceress"
		case SPELLS.curse : return "Curse"
		case SPELLS.raise : return "Raise"
		case SPELLS.dispel : return "Dispel"
		case SPELLS.revive : return "Revive"
		case SPELLS.unholy_aura : return "Unholy Aura"
		case SPELLS.kai : return "Kai"
		case SPELLS.shannaro : return "Shannaro"
		case SPELLS.iryo_ninjutsu : return "Iryo Ninjutsu"
	}
}



function spellToInfo(spell) {
	switch(spell) {
		case SPELLS.impale : return "impale"
		case SPELLS.frost_nova : return "Causes ice damage on enemy units within an area\n Cooldown : " + string(getCooldown())
		 + "\n Mana cost: " + string(getManaCost())
		case SPELLS.carrion_beetles : return "The Crypt Lord progenerates 1 Carrion Beetle from a target soul to attack the Crypt Lord's enemies. \n Beetles are permanent but only 5 can be controlled at a time." + " Cooldown : " + string(getCooldown()) + "\n Mana cost: " + string(getManaCost())
		case SPELLS.dark_ritual : return "Sacrifices an allied unit for mana\n Cooldown : " + string(getCooldown())
			 + "\n Mana cost: " + string(getManaCost())
		case SPELLS.earthshatter : return "Earthshatter: A punch that shatters the ground in a wide area, stunning and damaging nearby ground units.\n"
			 + "Mana: " + string(getManaCost()) + "\n"
			 + "Cooldown: " + string(getCooldown()) + "\n"
			 +"Damage per range: " + string(amount[?"damage"][0]) + ", " + string(amount[?"damage"][1]) + ", " + string(amount[?"damage"][2]) + "\n"
			 + "Stun duration per range: " + string(amount[?"stun"][0]) + ", " + string(amount[?"stun"][1]) + ", " + string(amount[?"stun"][2])
		case SPELLS.freeze : return "Freezes the target unit making it unable to attack.\n cooldown: " + string(getCooldown())
			 + "\n Mana cost: " + string(getManaCost()) + " Duration: " + string(getDuration()) + " Range: " + string(1)
		case SPELLS.frost_armor : return "Improves and applies frost element to armor of unit" + "\n Cooldown " + string(getCooldown())
	 + "\n Mana cost: " + string(getManaCost())
		case SPELLS.golden_dragon : return "summons a powerful golden dragon"
			 + "\n Cooldown: " + string(getCooldown())
			 + "\n Mana Cost: " + string(getManaCost())
			 + "\n Duration: " + string(getDuration())
		case SPELLS.kawarimi_no_jutsu :
			return "Swaps the position of two targeted friendly units.\n" + "Mana_cost: " + string(getManaCost()) + "\n"
			+ "Cooldown: " + string(getCooldown())
		case SPELLS.sleep : return "Makes target enemy fall asleep for, " + string(getDuration()) + " seconds. Cooldown: "+string(getCooldown())
			+ "\n Mana cost: " + string(getManaCost())
		case SPELLS.carrion_swarm : return "Freezes the target unit making it unable to attack.\n Cooldown: "+string(getCooldown())
			+ "\n Mana cost: " + string(getManaCost())
		case SPELLS.ninjago : return "The hero creats a tornado-like vortex of energy around himself hurting surrounding enemies"
			+ "\n Cooldown: " + string(getCooldown())
			+ "\n Mana Cost: " + string(getManaCost())
			+ "\n Duration: " + string(getDuration())
			+ "\n Damage Cap: " + string(getAmount())
		case SPELLS.holy_light : return "A holy light that can heal a friendly living unit."
			+ "\n Cooldown: " + string(getCooldown())
			+ "\n Mana Cost: " + string(getManaCost())
			+ "\n Heal Amount: " + string(getAmount())
		case SPELLS.spell_shield : return "Projects a magical barrier, blocking incoming damage on the hero and surrounding units for a short period."
			+ "\n Cooldown: " + string(getCooldown())
			+ "\n Blocked Damage Cap: " + string(getAmount()) //string(floor(amount[max(lvl - 1, 0)]))
			+ ""
			+ "\n Mana Cost: " + string(getManaCost())
			 + "\n Duration: " + string(getDuration())
		case SPELLS.spiked_carapace : return "The Crypt Lord forms barbed layers of chitinous armor \n that increases its defense and returns " + string(amount[1][max(lvl - 1, 0)]*100) +  "% of damage to enemy melee attackers."
			 + ""
		case SPELLS.locust_swarm : return "Creates a swarm of angry locusts that bite and tear at nearby enemy units. \n As they chew the enemy flesh, they convert it into a substance that restores hit points to the Crypt Lord when they return. " + "Cooldown: " + string(getCooldown()) + "\n Mana cost: " + string(mana_cost[0])
		case SPELLS.vampiric_aura : return "All friendly melee units gain " + string(getAmount()) + "percentage of damage caused, back as hit points when they hit a unit."  
		case SPELLS.heal : return "Heals a target friendly non-mechanical wounded unit for " + string(getAmount()) + " hit points"
			+ "\n" + "Cooldown : " + string(getCooldown())
			+ "\n" + "Mana cost " + string(getManaCost())
			+ "\n" + "Range: " + string(range)
		case SPELLS.slow : return "Slows targets movement and attack speed by " + string(getAmount() * 100) + "%." + "\n Duration: " 
			+ string(getDuration()) + " seconds." + "\n Range: " + string(4) 
			+ "\n Mana cost: " + string(getManaCost())
		case SPELLS.katon_gokakyu_no_jutsu : return "Hurls an fireball,\n damaging everything in its path\n Cooldown: " + string(getCooldown())
			+ "\n Mana cost: " + string(getManaCost()) + "\n Damage: " + string(getAmount())//string(amount[max(lvl - 1, 0)])
		case SPELLS.revive : return "Resurrects a Hero Soul on the same tile after "+ string(getDuration())+  " seconds"
		case SPELLS.buildFootman : return "Footman" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_footman))
		case SPELLS.buildArcher : return "Archer" + " Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_elven_archer))
		case SPELLS.buildSorceress : return "Sorceress, Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_sorceress))
		case SPELLS.buildPriest : return "Priest, Cost: " + string(ds_map_find_value(global.map_object_to_costs, obj_priest))
		case SPELLS.buildDispel : return "Priest dispel upgrade: Allows priests to cast dispel, decreaseing the duration of buff an debuff in an area " + ". Cost: " + string(getAmount())
		case SPELLS.buildInvisibility : return "Sorceress invisibility upgrade: Allows sorceresses to cast invisibility on a ally unit, " + "\n and multiplies mana of sorceresses by " + string(learnSpellManaMultiplicator) + " and mana regen. " + "Cost " + string(getAmount())
		case SPELLS.buildArcaneSanctum : return "Arcane Sanctum: Recruits Mages, Cost: " + string(getAmount());
		case SPELLS.buildBarracks : return "Barracks: Recruits Warriors, Cost: " + string(getAmount())
		case SPELLS.raise : return "Summons a skeleton from a soul"
		case SPELLS.decloak : return "Stop being invisible to be able to perform additional actions."
		case SPELLS.dispel : return "Reduces duration of hostile buffs in an area"
		+ "\n Mana Cost: " + string(getManaCost())
		+ "\n Range: " + string(range)
		+ "\n Dispel Damage: " + string(getAmount())
		+ "\n Cooldown: " + string(getCooldown())
		case SPELLS.buildDefend : return "Gives all footmans the ability to use the defend ability, Cost: " + string(getAmount())
		case SPELLS.buildImprovedBows : return "Increases the range of all archers by 1, Cost: " + string(getAmount())
		case SPELLS.defend : return "Reduces damage taken but makes the footman unable to attack"
		case SPELLS.invisibility : return "Makes a target friendly unit invisible. Units can't attack while invisible"
		+ "\n Mana cost: " + string(getManaCost())
		case SPELLS.unholy_aura : return "Increases the life regeneration rate of nearby friendly units by " + string(getAmount()) + " HP per second."
		case SPELLS.iryo_ninjutsu : return ""
		case SPELLS.kai : return ""
		case SPELLS.shannaro : return ""
	}
}

function spellToUnapply(spellEnum) {
	switch(spellEnum) {
		case SPELLS.sleep : return method(undefined, sleepUnapply)
		case SPELLS.invisibility : return method(undefined, invisibilityUnapply)
		default : return function() {}
	}
}

function invisibilityUnapply() {
	with(victim) {
		setAltitude(base_altitude)
		invisible = 0
		phase = UNIT_PHASES.idle
		action_bar = 0
	}
}

function sleepUnapply() {
	with(obj_sleep_animator) {
		if(owner == other.owner) {
			instance_destroy()
			with(target) {
				phase = UNIT_PHASES.idle
			}
		}
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
		case SPELLS.slow : return method(undefined, slow_ai)
		case SPELLS.heal : return method(undefined, heal_ai)
		default : return noone
	}
}

function heal_ai() {
	with(owner) {
		var list_heal_target_within_range = scr_find_friendlies_within_range(other.range)
	}
	if(array_length(list_heal_target_within_range) > 0) {
		var _target = scr_find_best_heal_target_from_list(list_heal_target_within_range)
		if(_target != noone) {
			owner.target = _target
			owner.phase = UNIT_PHASES.healing
		}
	}
}

function slow_ai() {
	with(owner) {
		var list_slow_target_within_range = scr_find_enemies_within_range(other.range)
	}
	if(array_length(list_slow_target_within_range) > 0) { 
		with(scr_find_best_procentage_debuff_target_from_list(list_slow_target_within_range, Enum)) {			
			global.clicked_tile = tile
			other.rightPerform()
			other.owner.mana -= other.getManaCost()
			other.cooldown_current = other.getCooldown()
			other.owner.action_bar = 0
		}
	}
}

heal_icon_animation_index = 0
heal_icon_animation_speed = 8

function createSpellSub(spellEnum) constructor {
	Enum = spellEnum;
	amount = spellToAmount(spellEnum)
	piercing = spellToPiercing(spellEnum)
	spellHealth = spellToSpellHealth(spellEnum)
	range = spellToRange(spellEnum)
	accuracy = spellToAccuracy(spellEnum)
	duration = spellToDuration(spellEnum)
	activated = 0
	selected = 0
	mana_cost = spellToManaCosts(spellEnum)
	icon = spellToIcon(spellEnum)
	ai = spellToAi(spellEnum)
	animator = spellToAnimator(spellEnum)
	cooldown = spellToCooldown(spellEnum)
	cooldown_current = 0
	lvl = 0
	autocast = 0
	icon_animation_speed = 8;
	icon_animation_index = 0;
	shouldPerform = function() {
		return autocast and owner.mana > getManaCost() and cooldown_current <= 0 and shouldPerformLocal()
	}
	shouldRightPerform = function() {
		return owner.mana >= getManaCost() and cooldown_current <= 0 and shouldRightPerformLocal()
	}
	shouldIconPerform = function() {
		if(object_is_ancestor(owner.object_index, obj_unit)) {
			return owner.mana >= getManaCost() and cooldown_current <= 0 and shouldIconPerformLocal()
		}
		return true
	}
	canRecruit = function() {
		return global.player.money >= global.map_object_to_costs[? animator] 
	}
}

function createSpell(spellEnum, _letter) {
	var spell = new createSpellSub(spellEnum)
	with(spell) {
		owner = other.id
		getCooldown = function() {
			return is_array(cooldown) ? cooldown[max(lvl - 1, 0)] : cooldown
		}
		getManaCost = function() {
			return is_array(mana_cost) ? mana_cost[max(lvl - 1, 0)] : mana_cost
		}
		getDuration = function() {
			return is_array(duration) ? duration[max(lvl - 1, 0)] : duration
		}
		getAmount = function() {
			return is_array(amount) ? amount[max(lvl - 1, 0)] : amount
		}
		info = spellToInfo(spellEnum)
		abilitiesInfo = spellToAbilitiesInfo(spellEnum)
		shouldPerformLocal = spellToShouldPerform(spellEnum)
		shouldRightPerformLocal = spellToShouldRightPerformLocal(spellEnum)
		shouldIconPerformLocal = spellToShouldIconPerformLocal(spellEnum)
		rightPerform = spellToRightPerform(spellEnum)
		perform = spellToPerform(spellEnum)
		iconPerform = spellToIconPerform(spellEnum)
		cursor = spellToCursor(spellEnum)
		name = spellToName(spellEnum)
		letter = _letter
		mouse_is_on = function() {
			var button = global.hud.charToButton[?letter]
			return abs((mouse_x - camera_get_view_x(view_camera[0])) - button._x) < global.hud.spell_button_width/2 and abs((mouse_y - camera_get_view_y(view_camera[0])) - button._y) < global.hud.spell_button_height/2
		}
		draw_hover_info = function() {
			var varInfo = global.hud.gui_display_abilities ? abilitiesInfo : info
			draw_set_color(c_green)
			draw_rectangle(camera_get_view_width(view_camera[0]) - 32 - 2 * string_width(varInfo), camera_get_view_height(view_camera[0]) - global.hud.hud_height - 32 - 2 * string_height(varInfo), camera_get_view_width(view_camera[0]), camera_get_view_height(view_camera[0]) - global.hud.hud_height, 0)
			draw_set_color(c_black)
			var old_align = draw_get_halign()
			draw_set_halign(fa_center)
			draw_text_transformed(global.hud.hud_width - string_width(varInfo), global.camera_height - global.hud.hud_height - 2 * string_height(varInfo), varInfo, 2, 2, 0)
			draw_set_halign(old_align)
		}
		
		createDebuff = function(_victim) constructor {
			total_duration = other.getDuration()
			spellHealth = other.spellHealth
			duration = other.getDuration()
			icon = other.icon
			name = other.name
			owner = other
			Enum = other.Enum;
			unapply = spellToUnapply(other.Enum)
			victim = _victim.id
			amount = other.getAmount()
		}
		scr_apply_debuff = function(victim) {
			var debuff_struct = new createDebuff(victim)
			with(victim) {
				array_push(list_of_active_debuff_structs, debuff_struct) 
				scr_sort_debuff_list_after_dispellity()
			}
		}
		
		level_up = function () {
			lvl++
			if(object_is_ancestor(owner.object_index, obj_hero)) {
				owner.number_of_ability_points--
			}
			info = spellToInfo(Enum)
		}
	}
	ds_map_add(buttonToSkill, _letter, spell)
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
	slow,
	heal,
	revive,
	invisibility,
	curse,
	raise,
	abilities,
	buildFootman,
	buildArcher,
	buildSorceress,
	buildPriest,
	buildDispel,
	buildInvisibility,
	buildDefend,
	buildImprovedBows,
	buildBarracks,
	buildArcaneSanctum,
	buildMoneyTree,
	decloak,
	dispel,
	death_coil,
	unholy_aura,
	death_pact,
	kai,
	iryo_ninjutsu,
	shannaro
}

#macro learnSpellManaMultiplicator 1.25

