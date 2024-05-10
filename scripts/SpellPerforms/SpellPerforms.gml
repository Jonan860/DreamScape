function spellToRightPerform(spell) {
	switch(spell) {
		case SPELLS.carrion_beetles : return method(undefined, carrionBeetleRightPerform)
		case SPELLS.carrion_swarm : return;
		case SPELLS.curse : return method(undefined, curseRightPerform)
		case SPELLS.dark_ritual : return method(undefined, darkSacrificeRightPerform)
		case SPELLS.earthshatter : return method(undefined, earthshatterRightPerform)
		case SPELLS.freeze : return method(undefined, freezeRightPerform)
		case SPELLS.frost_nova : return method(undefined, frostNovaRightPerform)
		case SPELLS.golden_dragon : return method(undefined, goldenDragonRightPerform);
		case SPELLS.heal : return method(undefined, healRightPerform)
		case SPELLS.holy_light : return method(undefined, holyLightRightPerform)
		case SPELLS.impale : return;
		case SPELLS.katon_gokakyu_no_jutsu : return method(undefined, katonGokakyuNoJutsuRightPerform)
		case SPELLS.kawarimi_no_jutsu : return method(undefined, kawarimiRightPerform)
		case SPELLS.sleep : return method(undefined, sleepRightPerform)
		case SPELLS.slow : return method(undefined, slowRightPerform)
		case SPELLS.spell_shield : return;
		case SPELLS.spiked_carapace : return;
		case SPELLS.vampiric_aura : return;
		case SPELLS.raise : return method(undefined, raiseSkeletonRightPerform);
		case SPELLS.buildArcaneSanctum : return method(undefined, buildBuildingRightPressed)
		case SPELLS.buildBarracks : return method(undefined, buildBuildingRightPressed)
		case SPELLS.invisibility  : return method(undefined, invisibilityRightPerform)
	}
}


function spellToIconPerform(spellenum) {
	switch(spellenum) {
		case SPELLS.defend : return method(undefined, defendIconPerform)
		case SPELLS.revive : return method(undefined, reviveIconPerform)
		case SPELLS.heal : return method(undefined, selectSwitchCursor)
		case SPELLS.buildBarracks : return method(undefined, selectSwitchCursor)
		case SPELLS.buildArcaneSanctum : return method(undefined, selectSwitchCursor)
		case SPELLS.invisibility : return method(undefined, selectSwitchCursor)
		case SPELLS.holy_light : return method(undefined, selectSwitchCursor)
		case SPELLS.abilities : return method(undefined, abilitiesIconPerform)
		case SPELLS.spell_shield : return method(undefined, spellShieldIconPerform)
		case SPELLS.freeze : return method(undefined, selectSwitchCursor)
		case SPELLS.slow : return method(undefined, selectSwitchCursor)
		case SPELLS.kawarimi_no_jutsu : return method(undefined, selectSwitchCursor)
		case SPELLS.ninjago : return method(undefined, ninjagoIconPerform)
		case SPELLS.earthshatter : return method(undefined, selectSwitchCursor)
		case SPELLS.katon_gokakyu_no_jutsu : return method(undefined, selectSwitchCursor)
		case SPELLS.golden_dragon : return method(undefined, selectSwitchCursor)
		case SPELLS.vampiric_aura : return method(undefined, vampiricAuraIconPerform)
		case SPELLS.locust_swarm : return method(undefined, locustIconPerform)
		case SPELLS.buildFootman : return method(undefined, performRecruit);
		case SPELLS.buildArcher : return method(undefined, performRecruit);
		case SPELLS.buildPriest : return method(undefined, performRecruit);
		case SPELLS.buildSorceress : return method(undefined, performRecruit);
		case SPELLS.buildDispel : return method(undefined, performRecruit);
		case SPELLS.buildImprovedBows : return method(undefined, performRecruit);
		case SPELLS.buildDefend : return method(undefined, performRecruit);
		case SPELLS.buildInvisibility : return method(undefined, performRecruit);
		case SPELLS.decloak : return method(undefined, decloakIconPerform)
	}
}

function decloakIconPerform() {
	with(owner) {
		for(var i = 0; i < ds_list_size(list_of_active_debuff_structs); i++) {
			with(list_of_active_debuff_structs[|i]) {
				if(Enum = SPELLS.invisibility) {
					unapply()
					scr_ds_list_remove_value(other.list_of_active_debuff_structs, self)
					exit;
				}
			
			}
		}
	}
}

function locustIconPerform() {
	instance_create_depth(owner.owner.x, owner.owner.y, 0, obj_locust_animator, {owner : other})
}
function spellToShouldRightPerformLocal(spellEnum) {
	switch(spellEnum) {
		case SPELLS.invisibility : return method(undefined, invisibilityShouldRightPerform)
		case SPELLS.holy_light : return method(undefined, holyLightShouldRightShouldPerform)
		case SPELLS.ninjago : return method(undefined, ninjagoIconShouldPerform)
		case SPELLS.spell_shield : return method(undefined, spellShieldShouldPerform)
		case SPELLS.heal : return method(undefined, healShouldRightPerformLocal)
		case SPELLS.slow : return method(undefined, slowShouldRightPerformLocal)
		default : return function() {return true}
	}
}

function slowShouldRightPerformLocal() {
	return global.clicked_tile.grounds_list[|0] != undefined and scr_is_enemies(owner, global.clicked_tile.grounds_list[|0])
}

function healShouldRightPerformLocal() {
	return global.clicked_tile.grounds_list[|0] != undefined and !scr_is_enemies(owner, global.clicked_tile.grounds_list[|0])
}

function carrionBeetleRightPerform(soul_to_raise) {
	raiseRightPerform(obj_carrion_beetle)
}

function raiseSkeletonRightPerform() {
	raiseRightPerform(obj_skeleton)
}

function goldenDragonRightPerform() {
	scr_make_room_for_instance_on_tile(global.clicked_tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_golden_dragon, global.clicked_tile, owner.owner)
}

function raiseRightPerform(obj) {
	scr_make_room_for_instance_on_tile(global.clicked_tile, "ground")
	scr_instance_create_at_tile_with_owner(obj, global.clicked_tile, owner.owner)
	instance_destroy(instance_nearest(global.clicked_tile.x, global.clicked_tile.y, obj_soul))
}

function darkSacrificeRightPerform(var_sacrifice) {
	var mana_conversion = amount[lvl - 1]
	with(owner) {
		mana = min(max_mana, mana + var_sacrifice.HP * mana_conversion)
	}
	instance_create_depth(var_sacrifice.x, var_sacrifice.y, var_sacrifice.depth, obj_dark_ritual_animator, {owner : other, target : var_sacrifice})
}

total_time_to_earthshatter_impact = 0
time_until_earthshatter_impact = 0
earthshatter_aoe = 2
earthshatter_stun_per_distance = ds_list_create()
ds_list_add(earthshatter_stun_per_distance, 10, 5, 2)

function spellToShouldPerform(_spell) {
	switch(_spell) {
		case SPELLS.curse : 
			return function() {
				with(owner) {
					return !ds_list_empty(scr_find_enemies_within_range(other.range))
				}
			}
		default : return true
	}
} 

function buildBuildingRightPressed() {
	if(owner.owner.money >= getAmount() and scr_occupiable(global.clicked_tile, "ground") and scr_get_distance(global.tile_selected, global.clicked_tile) <= range) {
		owner.owner.money -= getAmount()
		with(scr_instance_create_at_tile_with_owner(animator, global.clicked_tile, global.player)) {
			unfinished = 1
			build_progress = 0
			global.lille_skutt.is_building = id
		}
		
	}
}
function revivePerform() {
	with(var_selected) {
		if(phase == "reviving") {
			action_bar = 0
		} else {
			scr_disblend_list(path)
			ds_list_clear(path)
			target = noone
		}
		phase = phase == "reviving" ? "idle" : "reviving"
	}
}

function selectSwitchCursor() {
	if(global.selectedSpell != self) {
		cursor_sprite = cursor
		window_set_cursor(cr_none)
		global.selectedSpell = self
	} else {
		cursor_sprite = -1
		window_set_cursor(cr_default)
		global.selectedSpell = noone
	}
}

function goldenDragonShouldRightPerform() {

}



function invisibilityShouldIconPerform() {return global.player.sorceress_has_invisibility}

function healAnimationEnd() {
	with(target) {
		HP = min(max_HP, HP + other.amount)
	}
}

function healRightPerform() {
		var varTarget = global.clicked_tile.grounds_list[|0]
		instance_create_depth(varTarget.x, varTarget.y, varTarget.depth - 1, obj_heal_animator, {target : varTarget, owner : other})
}


function abilitiesIconPerform() {
	global.hud.gui_display_abilities = !global.hud.gui_display_abilities
}

function spellShieldIconPerform() {
	owner.mana -= getManaCost();
	cooldown_current = getCooldown();
	instance_create_depth(owner.x, owner.y, owner.depth + 0.5, obj_spell_shield_animator, {owner : other})
}

function spellShieldShouldPerform() {
	return lvl > 0 and owner.mana > getManaCost() and cooldown_current == 0
}

function vampiricAuraIconPerform() {
	instance_create_depth(owner.x, owner.y, owner.depth + 1, obj_vampiric_aura_animator, {owner : other})
}

function reviveIconPerform() {
	if(owner.phase == "reviving") {
		with(instance_position(x, y, obj_soul_hero)) {
			if(revival_time_left_sec > 0) {
				revival_time_left_sec -= 1/room_speed
			} else {
				var var_hero = var_soul_hero.instance
				with(var_hero) {
					scr_make_room_for_instance_on_tile(other.tile, altitude)
					scr_move_to_tile(other.tile)
					phase = "idle"
					action_bar = 0 //2021
				}
				other.owner.phase = "idle"
				instance_destroy(id)
			}
		}
	}
}

function sleepRightPerform(varTarget = global.clicked_tile.ground_unit[0]) {
	scr_apply_debuff(varTarget)
	instance_create_depth(varTarget.x, varTarget.y, varTarget.depth - 1, obj_sleep_animator, {owner : other, target : varTarget})
	with(varTarget) {
		phase = "sleep"
		with(obj_unit) {
			if(target = varTarget) {
				target = noone
				phase = owner == global.enemy ? "movement" : "idle"
				action_bar = owner == global.enemy ? action_bar : 0
				destination = noone
			}
		}
		target = noone
		destination = noone
	}
}

function freezeRightPerform(perputrator, victim) {
	//global.clicked_tile.grounds_list[|0].freezed.applied = 1
	scr_apply_debuff(global.clicked_tile.grounds_list[|0])
}


function freezeRightPerform2() {
	if(cursor_sprite == spr_freeze_cursor and !scr_is_debuffed(SPELLS.freeze)) {
		if(global.ida.freeze.lvl > 0) {
			var cooldown = getCooldown()
			var mana_cost = getManaCost()
			if(global.ida.freeze.cooldown_current == 0 and scr_get_distance(global.tile_selected, global.clicked_tile) == 1 and global.ida.mana >= mana_cost) {
				global.ida.mana -= mana_cost
				global.ida.freeze.cooldown_current = cooldown
				scr_freeze_unit(global.ida, global.clicked_tile.grounds_list[|0])
			}
		}
	}
}

function spellToPerform(spellEnum) {
	switch(spellEnum) {
		case SPELLS.buildDefend : return method(undefined, buildDefendPerform)
		case SPELLS.buildImprovedBows : return method(undefined, buildImprovedBowsPerform)
		case SPELLS.buildInvisibility : return method(undefined, buildInvisibilityPerform)
		case SPELLS.buildDispel : return method(undefined, buildDispelPerform)
	}
}

function buildDispelPerform() {
	global.player.priest_has_dispel = 1
	with(obj_priest) {
		dispel.lvl = 1
		mana *= learnSpellManaMultiplicator
		max_mana *= learnSpellManaMultiplicator
		mana_regen_rate_per_sec *= learnSpellManaMultiplicator
	}
}


function buildInvisibilityPerform() {
	global.player.sorceress_has_invisibility = 1
	with(obj_sorceress) {
		invisibility.lvl = 1
		mana *= learnSpellManaMultiplicator
		max_mana *= learnSpellManaMultiplicator
		mana_regen_rate_per_sec *= learnSpellManaMultiplicator
	}
}

function buildDefendPerform() {
	global.player.footman_has_defend_upgrade = 1
	with(obj_footman) {
		defend.lvl = 1
	}
}

function buildImprovedBowsPerform() {	
	global.player.elven_archers_has_improved_bows = 1
	with(obj_elven_archer) {
		scr_update_range()
	}
}

function slowRightPerform() {
	scr_apply_debuff(global.clicked_tile.grounds_list[|0])
}

function cloakRightPerform(targeto) {
	with(targeto) {
		
	}
}

function invisibilityRightPerform(){
	scr_apply_debuff(global.clicked_tile.grounds_list[|0])
	scr_make_all_unit_detarget(global.clicked_tile.grounds_list[|0])
	with(global.clicked_tile.grounds_list[|0]) {
		setAltitude("invisible")
		phase = "idle"
		action_bar = 0
	}
}

function frostNovaRightPerform(var_target_tile) {
	phase = "frost nova"
	var var_frost_nova = instance_create_layer(var_target_tile.x, var_target_tile.y, "tiles", obj_frost_nova_animator, {owner : other, target : var_target_tile})
	with(var_frost_nova) {
		depth -= 1
	}
}

function invisibilityShouldRightPerform() {
	with(global.clicked_tile.grounds_list[|0]) {
		return !scr_is_enemies(id, other.owner.id)
	}
	return false
}
	
function curseRightPerform() {
	scr_apply_debuff(global.clicked_tile.grounds_list[|0])
	global.clicked_tile.grounds_list[|0].scr_update_accuracy()
}

function earthshatterRightPerform() {
	owner.mana -= getManaCost()
	cooldown_current = getCooldown()
	owner.phase = "earthShatter"
	instance_create_depth(owner.x, owner.y, global.clicked_tile.depth - 1, animator, {target : global.clicked_tile, owner : other})
}

function kawarimiRightPerform()	{
		owner.mana += getManaCost()
		cooldown_current = 0
	if(global.game.unit_to_kawarimi1 == noone) {
		var var_unit_to_kawarimi1 = global.clicked_tile.grounds_list[|0]
		if(object_is_ancestor(var_unit_to_kawarimi1.object_index, obj_unit) and var_unit_to_kawarimi1.owner == global.player) {
			global.game.unit_to_kawarimi1 = var_unit_to_kawarimi1
			instance_create_depth(0, 0, var_unit_to_kawarimi1.depth + 1, animator)
		}
	} else {	
	var var_unit_to_kawarimi2 = global.clicked_tile.grounds_list[|0]
	if(object_is_ancestor(var_unit_to_kawarimi2.object_index, obj_unit) and var_unit_to_kawarimi2.owner == global.player) {
		owner.mana -= getManaCost()
		cooldown_current = getCooldown()
		global.game.unit_to_kawarimi2 = var_unit_to_kawarimi2
		if(global.game.unit_to_kawarimi1 != global.game.unit_to_kawarimi2) {
			scr_swap_tile(global.game.unit_to_kawarimi1, global.game.unit_to_kawarimi2)
		}
		global.game.unit_to_kawarimi1 = noone; global.game.unit_to_kawarimi2 = noone
		}
	}
}

function holyLightRightPerform() {
	var _target = global.clicked_tile.grounds_list[|0]
	with(_target) {
		HP = min(max_HP, HP + other.getAmount())
	}
	instance_create_depth(_target.x, _target.y, _target.depth - 1, obj_holy_light_animator, {target : _target, owner : other})
}

function holyLightShouldRightShouldPerform() {
	return global.selectedSpell = self 
		and owner.mana >= getManaCost()
		and cooldown_current == 0
		and scr_get_distance(global.tile_selected, global.clicked_tile) <= range
}
	
function defendIconPerform() {
	if(global.player.footman_has_defend_upgrade) {
		with(owner) {
			is_defending = !is_defending
			update_damage_reduction()
		}
	}
}

function performRecruit() {
	if(!owner.unfinished and (animator == undefined or canRecruit(animator))) {
		recruit()
	}
}

function canRecruit(obj) {
	return global.player.money >= ds_map_find_value(global.map_object_to_costs, obj)
}

function recruit() { 
	global.player.money -= getAmount()
	ds_list_add(owner.queue_list, letter)
}

function ninjagoIconPerform() {
	owner.mana -= getManaCost();
	cooldown_current = getCooldown();
	var var_ninjago = instance_create_layer(owner.x, owner.y, "air", obj_ninjago_animator, {owner : other})
}

function ninjagoIconShouldPerform() {
	return lvl > 0 and owner.mana > getManaCost() and cooldown_current == 0
}

function heal_target(_target) {
	with(_target) {
		HP = min(max_HP, HP + other.getAmount())
	}
 }
 
 
 function katonGokakyuNoJutsuRightPerform() {
	var angle = point_direction(owner.x, owner.y, global.clicked_tile.x, global.clicked_tile.y) 
	var angles = [90, 270, NWA, SWA, NEA, NWA - 180]
	var closest_angle_dist = 1000;
	var i;
	for(i = 0; i < array_length(angles); i++) {
		if(abs(angles[i] - angle) < closest_angle_dist) {
			closest_angle_dist = abs(angles[i] - angle);
			var closest_index = i;
		}
	}
	angle = angles[closest_index];
	
	with(instance_create_depth(owner.tile.x, owner.tile.y, owner.depth, animator)) {
		owner = other
		image_angle = angle
		x += sprite_get_width(spr_hexagon_pink) / 3 * cos(angle * pi/180)
		y -= sprite_get_height(spr_hexagon_pink) / 3 * sin(angle * pi/180)
		speed = 4
		direction = angle;
	}
}
