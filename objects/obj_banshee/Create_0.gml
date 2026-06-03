event_inherited()
movement_cost = 3 * game_get_speed(gamespeed_fps)
attack_cost = 1.5 * game_get_speed(gamespeed_fps)
max_action_bar = 3 * game_get_speed(gamespeed_fps)
action_bar = 0
range = 2
HP = 70
max_HP = 70
HP_regeneration_rate = 0.1
damage = 4
base_armor = [1, 0]
armor = base_armor
armor_coverage = [50, 50]
accuracy = 1
base_accuracy = accuracy
evasiveness = 0.5
altitude = ALTITUDES.ground
experience_to_give = 100
mana = 100
max_mana = 100
mana_regen_rate_per_sec = 0.3

attack_animator = obj_magic_projectile_animator

curse_icon_animation_index = 0
curse_icon_animation_speed = 8 //frames per sec

curse = createSpell(SPELLS.curse, "q")
skills = [curse]
curse.autocast = 1;

ai = method(undefined, scr_ai_spell_banshee)

attack_target = function() {
	attack_target_magic_projectile()
}