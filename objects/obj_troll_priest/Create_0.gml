event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 200
max_HP = 70
HP_regeneration_rate = 0.1
damage = 3
base_armor = [1, 0]
armor = base_armor
armor_coverage = [50, 50]
piercing = 2
base_accuracy = 1
accuracy = 1
evasiveness = 0.5
altitude = ALTITUDES.ground
experience_to_give = 100
mana = 200
max_mana = 200
mana_regen_rate_per_sec = 10
imba_heal = createSpell(SPELLS.imba_heal, "q")
imba_heal.level_up()
imba_heal.autocast = 1
abolish_magic = createSpell(SPELLS.abolish_magic, "w")
abolish_magic.level_up()
abolish_magic.autocast = 1
skills = [imba_heal, abolish_magic]

attack_animator = obj_magic_projectile_animator


attack_target = function() {attack_target_magic_projectile(c_yellow)}
