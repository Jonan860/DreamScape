event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 70
max_HP = 70
HP_regeneration_rate = 0.1
damage = 4
damage_reduction = 0
accuracy = 1
base_accuracy = accuracy
evasiveness = 0.5
altitude = ALTITUDES.ground
experience_to_give = 100
mana = 100
max_mana = 100
mana_regen_rate_per_sec = 0.3

raise = createSpell(SPELLS.raise, "q")
skills = [raise]

ai = method(undefined, scr_ai_spell_necromancer)
attack_target = function() {attack_target_magic_projectile(c_lime)}
