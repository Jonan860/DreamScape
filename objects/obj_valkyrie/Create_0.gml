// Inherit the parent event
event_inherited();
movement_cost = 3 * game_get_speed(gamespeed_fps)
attack_cost = 1.5 * game_get_speed(gamespeed_fps)
max_action_bar = 3 * game_get_speed(gamespeed_fps)
action_bar = 0
range = 1
HP = 100
max_HP = 100
HP_regeneration_rate = 0.2
damage = 10
base_armor = [1, 0]
armor = base_armor
armor_coverage = [50, 50]
accuracy = 2
piercing = 3
base_accuracy = accuracy
evasiveness = 0.75
altitude = ALTITUDES.ground
experience_to_give = 200
mana = 0
max_mana = 100
mana_regen_rate_per_sec = -0.3

attack_animator = obj_sword_attack

haste = createSpell(SPELLS.haste, "q")
flash_heal = createSpell(SPELLS.flash_heal, "w")
skills = [haste, flash_heal]
haste.autocast = 1;
haste.lvl = 1
flash_heal.lvl = 1
ai = method(undefined, scr_ai_spell_banshee)

attack_target = method(undefined, scr_attack_target_meelee)