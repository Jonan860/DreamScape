function scr_ai_spell_necromancer() {
		if(mana >= spell_q.mana_cost) {
			with(scr_find_soul_within_range()) {
				other.scr_raise_skeleton(id)
				other.mana -= other.spell_q.mana_cost
			}
		}
}
