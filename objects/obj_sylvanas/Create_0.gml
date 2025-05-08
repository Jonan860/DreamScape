event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 4
HP = 150 //150
max_HP = 150 //150
HP_regeneration_rate = 0.3
damage = 10
base_armor = [3, 1, 0]
armor = base_armor
armor_coverage = [50, 25, 25]
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone

number_of_ability_points = 1
altitude = ALTITUDES.ground

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45  //per second

dark_arrow = createSpell(SPELLS.dark_arrow, "q")
life_drain = createSpell(SPELLS.life_drain, "w")
silence = createSpell(SPELLS.silence, "e")
skills = [dark_arrow, life_drain, silence]
list_level_sprites = [0, spr_sylvanas, spr_sylvanas, spr_sylvanas, spr_sylvanas]

attack_animator = obj_arrow_animator

spr_height = sprite_height
spr_width = sprite_width

ai = function () {
	dark_arrow.autocast = false
	if(phase != UNIT_PHASES.channeling and mana > life_drain.getManaCost()) {
		dark_arrow.autocast = true
		if(HP < max_HP / 2 and mana >= life_drain.getManaCost() and life_drain.cooldown_current) {
			var lifeDrainTarget = scr_find_damage_spell_target()
			if(lifeDrainTarget != noone) {
				life_drain.rightPerform(lifeDrainTarget)
			}
		}
		else{
			var silenceTile = scr_find_silence_tile()
		}
		if(mana >= frost_nova.getManaCost() and frost_nova.cooldown_current == 0 and phase != UNIT_PHASES.frostNova) {
			var frost_nova_target_tile_within_range = scr_find_frost_nova_target_within_range()
			if(frost_nova_target_tile_within_range != noone) {
				frost_nova.rightPerform(frost_nova_target_tile_within_range)
				mana -= frost_nova.getManaCost()
				frost_nova.cooldown_current = frost_nova.getCooldown()
			}
			exit;
		}


	if(frost_nova.getManaCost() + dark_ritual.getManaCost() > mana and mana >= dark_ritual.getManaCost() and dark_ritual.cooldown_current == 0 and dark_ritual.lvl > 0 and phase != "frost nova") {
		var var_dark_sacrifice = scr_find_dark_ritual_sacrifice()
		if(var_dark_sacrifice != noone) {
			dark_ritual.rightPerform(var_dark_sacrifice)
			mana -= dark_ritual.getManaCost()
			dark_ritual.cooldown_current = dark_ritual.getCooldown()
		}
	}
}

attack_target = method(undefined, scr_attack_target_dark_ranger)