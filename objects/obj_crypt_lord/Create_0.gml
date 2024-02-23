event_inherited()
owner = noone
movement_cost = 3 * room_speed
attack_cost = 1.5 * room_speed
max_action_bar = 3 * room_speed
action_bar = 0
range = 1
HP = 150
max_HP = 150
HP_regeneration_rate = 0.3
damage = 10
base_damage_reduction = 0.2
damage_reduction = 0.2
accuracy = 1
base_accuracy = 1
evasiveness = 0.5
target = noone
number_of_ability_points = 1
altitude = "ground"

max_mana = 100
mana = 100
mana_regen_rate_per_sec = 0.45  //per second


impale = createSpell(SPELLS.impale, "q")
carapace = createSpell(SPELLS.spiked_carapace, "w")
carrion_beetles = createSpell(SPELLS.carrion_beetles, "e")
locust_swarm = createSpell(SPELLS.locust_swarm, "r")

skills = [impale, carapace, carrion_beetles, locust_swarm]

ds_list_level_sprites = ds_list_create()
ds_list_add(ds_list_level_sprites, 0, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord, spr_crypt_lord)
spr_height = sprite_height; spr_width = sprite_width


locust_activated = 0
locust_spawn_interval_sec = 0.4
time_until_next_locust = locust_spawn_interval_sec
max_active_locusts = 7
 updateDamageReduction = function() {
		if(carapace.lvl > 0) {
			var reduction_from_spiked_carapace = list_of_damage_reduction_from_spiked_carapacelvl[|spell_w.lvl - 1]
			damage_reduction = 1 - (1 - base_damage_reduction) * (1 - reduction_from_spiked_carapace)
		}
	}

ai = function() {
	if(mana >= carrion_beetles.mana_cost and carrion_beetles.cooldown_current == 0) {
		var soul_within_range = scr_find_soul_within_range()
		if(soul_within_range != noone) {
			scr_raise_carrion_beetle(soul_within_range)
			carrion_beetles.cooldown_current = carrion_beetles.cooldown_max
			mana -= carrion_beetles.mana_cost
		}
	}
	
	if(mana >= locust_swarm.mana_cost and locust_swarm.cooldown_current == 0) {
		var list_of_enemies = scr_find_enemies_within_range(range)
		if(!ds_list_empty(list_of_enemies)) {
			locust_swarm.activated.activated = 1
			mana -= locust_swarm.mana_cost
			locust_swarm.cooldown_current = locust_swarm.cooldown_max
		}
		ds_list_destroy(list_of_enemies)
	}
}