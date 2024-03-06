function scr_level_up_spell(spell) {
	global.hud.gui_display_abilities = 0
	spell.lvl += 1
	number_of_ability_points -= 1
}