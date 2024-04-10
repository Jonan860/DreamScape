function scr_ai_spell_necromancer() {
	if(mana >= raise.mana_cost) {
		var target = scr_find_soul_within_range(raise.range)
		if(target != noone) {
			var save = global.clicked_tile
			global.clicked_tile = target.tile
			raise.rightPerform()
			mana -= raise.getManaCost()
		}
	}
}
