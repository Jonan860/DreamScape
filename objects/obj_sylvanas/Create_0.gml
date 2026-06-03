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

piercing = 1
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
	if(life_drain.canPerform()) {
		dark_arrow.autocast = true
		if(HP < max_HP / 2) {
			var lifeDrainTarget = scr_find_damage_spell_target(life_drain)
			if(lifeDrainTarget != noone) {
				life_drain.rightPerform(lifeDrainTarget)
			}
		}
		else if(silence.canPerform()) {
			var silenceTile = scr_find_spell_target_tile(silence)
			if(silenceTile != noone) {
				silence.rightPerform(silenceTile)
				mana -= silence.getManaCost()
				silence.cooldown_current = silence.getCooldown()
			}
		}
	}
}

attack_target = method(undefined, scr_attack_target_dark_ranger)