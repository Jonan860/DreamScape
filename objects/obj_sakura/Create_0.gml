event_inherited()
global.sakura = id
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
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

kai = createSpell(SPELLS.kai, "q")
iryo_ninjutsu = createSpell(SPELLS.iryo_ninjutsu, "w")
shannaro = createSpell(SPELLS.shannaro, "e")
earthshatter = createSpell(SPELLS.earthshatter, "r")

skills = [kai, iryo_ninjutsu, shannaro, earthshatter, revive]
attack_target = function() {attack_target_magic_projectile()}
list_level_sprites = [0, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura, spr_sakura]
spr_height = sprite_height
spr_width = sprite_width