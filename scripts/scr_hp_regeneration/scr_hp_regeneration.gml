function scr_hp_regeneration() {
	with(obj_unit) {
		if(HP > 0 and !eaten) {
			var frenzyAmountMap = spellToAmount(SPELLS.unholy_frenzy)
			var frenzyAmount = array_first(frenzyAmountMap[? "damage"])
			var frenzyFactor = (scr_is_debuffed(SPELLS.unholy_frenzy) ? frenzyAmount : 0)
			if(object_is_ancestor(object_index, obj_hero)) {
				for(var i = 0; i < array_length(inventory); i++) {
					if(inventory[i] != 0 and inventory[i].object_index == obj_health_stone) {
						var health_stone_factor = inventory[i].hp_regen
					}
				}
			}
			HP = min(HP + (HP_regeneration_rate - frenzyFactor + get_max_aura(id, obj_unholy_aura_animator)) / room_speed * global.gamespeed, max_HP)
		}
	}
}
