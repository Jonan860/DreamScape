function scr_ai_spell_necromancer() {
		if(mana >= global.raise_struct.mana_cost) {
			var soul_within_range = scr_find_soul_within_range()
			if(soul_within_range != noone) {
				scr_raise_skeleton(soul_within_range)
				mana -= global.raise_struct.mana_cost
			}
		}
}
