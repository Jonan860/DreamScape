event_inherited()
global.ida = id
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 2
HP = 100
max_HP = 100
HP_regeneration_rate = 0.2
damage = 10
base_armor = [3, 1, 0]
armor = base_armor
armor_coverage = [50, 25, 25]
piercing = 0
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = ALTITUDES.ground
max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.6   //per second

freeze = createSpell(SPELLS.freeze, "q")
katon_gokakyu_no_jutsu = createSpell(SPELLS.katon_gokakyu_no_jutsu, "w")
kawarimi_no_jutsu = createSpell(SPELLS.kawarimi_no_jutsu, "e")
earthshatter = createSpell(SPELLS.earthshatter, "r")

skills = [freeze, katon_gokakyu_no_jutsu, kawarimi_no_jutsu, earthshatter, revive]
attack_target = function() {attack_target_magic_projectile()}
list_level_sprites = [0, spr_ida_level1, spr_ida_level_2, sprite_ida_level_3, spr_ida_level_4, spr_ida_level_5, spr_ida_level_6, spr_ida_level_7, spr_ida_level_8, spr_ida_level_8, spr_ida_level_8, spr_ida_level_8, spr_ida_level_8, spr_ida_level_8]
spr_height = sprite_height
spr_width = sprite_width
