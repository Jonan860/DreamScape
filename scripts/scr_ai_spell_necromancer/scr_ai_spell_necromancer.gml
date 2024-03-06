function scr_ai_spell_necromancer() {
		if(mana >= raise.mana_cost) {
			with(scr_find_soul_within_range()) {
				other.scr_raise_skeleton(id)
				other.mana -= other.raise.mana_cost
			}
		}
}
