event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 70
max_HP = 70
HP_regeneration_rate = 0.1
damage = 3
damage_reduction = 0
accuracy = 1
evasiveness = 0.5
altitude = "ground"
experience_to_give = 100
mana = 50
max_mana = 100
mana_regen_rate_per_sec = 0.6
heal = createSpell(SPELLS.heal, "q")
invisibility = createSpell(SPELLS.invisibility, "w")
skills = [heal, invisibility]



attack_target = function() {attack_target_magic_projectile(c_yellow)}