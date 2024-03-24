function spellToRightPerform(spell) {
	switch(spell) {
		case SPELLS.build : return;
		case SPELLS.carrion_beetles : return method(undefined, carrionBeetleRightPerform)
		case SPELLS.carrion_swarm : return;
		case SPELLS.dark_ritual : return method(undefined, darkSacrificeRightPerform)
		case SPELLS.earthshatter : return method(undefined, earthshatterRightPerform)
		case SPELLS.freeze : return method(undefined, freezeRightPerform)
		case SPELLS.frost_nova : return method(undefined, nova)
		case SPELLS.golden_dragon : return;
		case SPELLS.heal : return method(undefined, healRightPerform)
		case SPELLS.holy_light : return method(undefined, holyLightRightPerform)
		case SPELLS.impale : return;
		case SPELLS.katon_gokakyu_no_jutsu : return method(undefined, katonGokakyuNoJutsuPerform)
		case SPELLS.kawarimi_no_jutsu : return method(undefined, kawarimiRightPerform)
		case SPELLS.sleep : return method(undefined, sleepRightPerform)
		case SPELLS.slow : return method(undefined, slowRightPerform)
		case SPELLS.spell_shield : return;
		case SPELLS.spiked_carapace : return;
		case SPELLS.vampiric_aura : return;
		case SPELLS.buildFootman : return method(undefined, performRecruit);
		case SPELLS.buildArcher : return method(undefined, performRecruit);
		case SPELLS.buildPriest : return method(undefined, performRecruit);
		case SPELLS.buildSorceress : return method(undefined, performRecruit);
		case SPELLS.buildDispel : return method(undefined, performRecruit);
		case SPELLS.buildImprovedBows : return method(undefined, performRecruit);
		case SPELLS.buildDefend : return method(undefined, performRecruit);
		case SPELLS.buildInvisibility : return method(undefined, performRecruit);
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
		case SPELLS.holy_light : return method(undefined, holyLightIconPerform)
		case SPELLS.abilities : return method(undefined, abilitiesIconPerform)
		case SPELLS.spell_shield : return method(undefined, spellShieldIconPerform)
		case SPELLS.freeze : return method(undefined, selectSwitchCursor)
		case SPELLS.slow : return method(undefined, selectSwitchCursor)
		case SPELLS.kawarimi_no_jutsu : return method(undefined, selectSwitchCursor)
		case SPELLS.ninjago : return method(undefined, ninjagoIconPerform)
		case SPELLS.earthshatter : return method(undefined, selectSwitchCursor)
	}
}

function spellToShouldRightPerformLocal(spellEnum) {
	switch(spellEnum) {
		case SPELLS.invisibility : return method(undefined, invisibilityShouldRightPerform)
		case SPELLS.holy_light : return method(undefined, holyLightShouldRightShouldPerform)
		default : return function() {return true}
	}
}

function carrionBeetleRightPerform(soul_to_raise) {
	scr_make_room_for_instance_on_tile(soul_to_raise.tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_carrion_beetle, soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}

function darkSacrificeRightPerform(var_sacrifice) {
	var mana_conversion = amount[|lvl - 1]
	mana = min(max_mana, mana + var_sacrifice.HP * mana_conversion)
	with(var_sacrifice) {
		phase = "sacrificed"
		time_until_dark_ritual_sacrifice_sec = other.id.dark_ritual_duration_sec
	}
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

function scr_right_pressed_spade_selected(var_selected_unit) {
var var_barrack_cost = ds_map_find_value(global.map_object_to_costs, animator)
	if(global.player.money >= var_barrack_cost and scr_occupiable(global.clicked_tile, "ground") and scr_get_distance(global.tile_selected, global.clicked_tile) <= var_selected_unit.range) {
		global.player.money -= var_barrack_cost
		var barrack = scr_instance_create_at_tile_with_owner(animator, global.clicked_tile, global.player)
		barrack.unfinished = 1
		barrack.build_progress = 0
		global.lille_skutt.is_building = self
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

function goldenDragonRightPerform() {
	scr_make_room_for_instance_on_tile(global.clicked_tile, "ground") ///ska ändras tilll air
	scr_instance_create_at_tile_with_owner(obj_golden_dragon, global.clicked_tile, global.player)
}

function invisibilityShouldIconPerform() {return global.player.sorceress_has_invisibility}

function healAnimationEnd() {
	with(target) {
		HP = min(max_HP, HP + other.amount)
		heal_animation_time_left_in_sec = animation_time
	}
}

function healRightPerform() {
		phase = "healing"
		target = var_ground_unit
}


function abilitiesIconPerform() {
	global.hud.gui_display_abilities = !global.hud.gui_display_abilities
}

function spellShieldIconPerform() {
	cooldown_current = getCooldown()
	owner.mana -= getManaCost()
	activated = 1
	owner.alarm[1] = duration * room_speed
}

function reviveIconPerform() {
	if(owner.phase == "reviving") {
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
				other.owner.phase = "idle"
				instance_destroy(id)
			}
		}
	}
}

function sleepRightPerform(var_target) {
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
		sleep_timer = other.list_sleep_time_per_lvl[|other.sleep.lvl - 1]
	}
}

function freezeRightPerform(perputrator, victim) {
	scr_apply_debuff(global.clicked_tile.grounds_list[|0])
}


function freezeRightPerform2() {
	if(cursor_sprite == spr_freeze_cursor and !already_freezed) {
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

function slowRightPerform(slow_target) {
	slow_target.slowed.apply()
}

function cloakRightPerform(targeto) {
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

function invisibleRightPerform(var_unit){
	cloakPerform(var_unit)
	with(var_unit) {
		invisible_time_left = global.invisibility_struct.duration
		invisible = 1
	}
}

function invisibilityShouldRightPerform() {
	return cursor_sprite == spr_invisibility_cursor
		and var_selected_unit.invisibility.cooldown_current == 0
		and scr_get_distance(var_selected_unit, global.clicked_tile) <= var_selected_unit.invisibility.range
		and var_selected_unit.mana >= var_selected_unit.invisibility.mana_cost
}

function raiseRightPerform(soul_to_raise) {
	scr_make_room_for_instance_on_tile(soul_to_raise.tile, "ground")
	scr_instance_create_at_tile_with_owner(obj_skeleton, soul_to_raise.tile,owner)
	instance_destroy(soul_to_raise)
}
	
function curseRightPerform(curse_target) {
	with(curse_target) {
		scr_apply_debuff(global.curse_struct, 0)
		scr_update_accuracy()
	}
}

function earthshatterRightPerform() {
		if(cooldown_current == 0 and scr_get_distance(global.tile_selected, global.clicked_tile) <= range and owner.mana >= owner.getManaCost() and lvl > 0) {
			with(owner) {
				mana -= mana_cost
				cooldown_current = getCooldown()
				instance_create_depth(x, y, 0, animator, {target : global.clicked_tile})
				exit;
			}
		}
}

function kawarimiRightPerform() {
	if(owner.mana >= mana_cost and lvl > 0) {
		if(unit_to_kawarimi1 == noone and owner.mana >= mana_cost) {
			var var_unit_to_kawarimi1 = global.clicked_tile.grounds_list[|0]
			if(object_is_ancestor(var_unit_to_kawarimi1.object_index, obj_unit)) {
				unit_to_kawarimi1 = var_unit_to_kawarimi1
			}
		} else if(owner.mana >= mana_cost and cooldown_current == 0) {	
		var var_unit_to_kawarimi2 = global.clicked_tile.grounds_list[|0]
		if(object_is_ancestor(var_unit_to_kawarimi2.object_index, obj_unit)) {
			unit_to_kawarimi2 = var_unit_to_kawarimi2
			if(unit_to_kawarimi1 != unit_to_kawarimi2) {
				cooldown_current = getCooldown()
				owner.mana -= mana_cost
				action_bar = 0
				scr_swap_tile(unit_to_kawarimi1, unit_to_kawarimi2)
			}
			unit_to_kawarimi1 = noone; unit_to_kawarimi2 = noone
			}
		}
	}
}

function holyLightIconPerform(var_selected) {
	if(holy_light.lvl > 0) {
		switchCursor()
		selected = 1
	}
}

function holyLightRightPerform() {
	global.nils.mana -= global.nils.holy_light.mana_cost
	global.nils.holy_light.cooldown_current = global.nils.holy_light.getCooldown()
	scr_holy_light_unit(global.nils, global.clicked_tile.grounds_list[|0])
}

function holyLightShouldRightShouldPerform() {
	return cursor_sprite == spr_holy_light_cursor 
		and global.nils.mana >= global.nils.holy_light.mana_cost 
		and global.nils.holy_light.cooldown_current == 0
		and scr_get_distance(global.tile_selected, global.clicked_tile) <= global.nils.holy_light.range
}
	
function defendIconPerform() {
	if(global.player.footman_has_defend_upgrade) {
		with(owner) {
			is_defending = !is_defending
		}
	}
}

function performRecruit(char) {
	if(!unfinished and canRecruit(char)) {
		recruit(char)
	}
}

function canRecruit(obj) {
	return global.player.money >= ds_map_find_value(global.map_object_to_costs, obj)
}

function recruit(obj) { 
	global.player.money -= ds_map_find_value(global.map_object_to_costs,  obj)
	ds_list_add(owner.queue_list, letter)
}

function ninjagoIconPerform() {
	cooldown_current = getCooldown()
	owner.mana -= mana_cost
	activated = 0
	var var_ninjago = instance_create_layer(owner.x, owner.y, "air", obj_ninjago_animator)
	var_ninjago.creator = owner
	var_ninjago.alarm[0] = duration * room_speed
	
}

function heal_target(_target) {
	 with(_target) {
		target.HP = min(target.max_HP, target.HP + other.amount)
	 }
 }
 
 function katonGokakyuNoJutsuPerform() {
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
