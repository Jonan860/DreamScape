function scr_level_up(){
	lvl++
	number_of_ability_points++
	HP *= HP_level_up_multiplier
	max_HP *= HP_level_up_multiplier
	damage *= damage_level_up_multiplier
	damage_reduction = (armor_level_up_multiplier + damage_reduction - 1) / armor_level_up_multiplier
	evasiveness = (evasion_level_up_multiplier + evasiveness - 1) / evasion_level_up_multiplier
	mana *= mana_level_up_multiplier
	max_mana *= mana_level_up_multiplier
	mana_regen_rate_per_sec *= mana_regen_level_up_multiplier
	HP_regeneration_rate *= HP_regen_level_up_multplier
	experience -= experience_to_level_up
	experience_to_level_up *= experience_to_level_up_increase_rate
	accuracy *= -ln(2) / ln(1 - 1 / (2 * evasion_level_up_multiplier))
	
	if(list_level_sprites[lvl] > 0) {
		image_xscale = 1; image_yscale = 1
		sprite_index = list_level_sprites[lvl]
		image_xscale = spr_width/sprite_width; image_yscale = spr_height/sprite_height
	}
}