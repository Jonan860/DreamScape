event_inherited()
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 150
max_HP = 150
HP_regeneration_rate = 0.3
damage = 10
base_armor = [5, 3, 0]
armor = base_armor
base_armor_coverage = [50, 25, 25]
armor_coverage = base_armor_coverage
piercing = 1
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = ALTITUDES.ground

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45  //per second


impale = createSpell(SPELLS.impale, "q")
spiked_carapace = createSpell(SPELLS.spiked_carapace, "w")
carrion_beetles = createSpell(SPELLS.carrion_beetles, "e")
locust_swarm = createSpell(SPELLS.locust_swarm, "r")

skills = [impale, spiked_carapace, carrion_beetles, locust_swarm]

list_level_sprites = []
array_push(list_level_sprites, 0, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord)
spr_height = sprite_height; spr_width = sprite_width


attack_target = method(undefined, scr_attack_target_hungry_hungry_lizard)

ai = function() {
	if(mana >= carrion_beetles.getManaCost() and carrion_beetles.cooldown_current == 0) {
		var soul_within_range = scr_find_soul_within_range(carrion_beetles.range)
		if(soul_within_range != noone) {
			var save = global.clicked_tile
			global.clicked_tile = soul_within_range.tile
			carrion_beetles.rightPerform(soul_within_range)
			carrion_beetles.cooldown_current = carrion_beetles.getCooldown()
			mana -= carrion_beetles.getManaCost()
			global.clicked_tile = save
		}
	}
	
	if(mana >= locust_swarm.getManaCost() and locust_swarm.cooldown_current == 0) {
		var list_of_enemies = scr_find_enemies_within_range(range)
		if(!array_equals(list_of_enemies, [])) {
			with(locust_swarm) {
				iconPerform()
			}
			mana -= locust_swarm.getManaCost()
			locust_swarm.cooldown_current = locust_swarm.getCooldown()
		}
	}
}