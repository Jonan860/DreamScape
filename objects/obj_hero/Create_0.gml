event_inherited()
experience = 0
experience_to_level_up = 300
experience_to_level_up_increase_rate = 2
lvl = 1
accumulated_level_up_stat_increase = 1.5
HP_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
damage_level_up_multiplier = power(accumulated_level_up_stat_increase, 3/8)
armor_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/8)
evasion_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/8)
mana_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
mana_regen_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
HP_regen_level_up_multplier = power(accumulated_level_up_stat_increase, 1/4)
accuracy_level_up_multiplier = power(accumulated_level_up_stat_increase, 1/4)
revive = createSpell(SPELLS.revive, "a")
revive.lvl = 1
if(owner = global.player) {
	abilities = createSpell(SPELLS.abilities, "d")
	abilities.lvl = 1;
}

