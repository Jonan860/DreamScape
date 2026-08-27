
if(scr_is_enemies(owner.owner, other.id)) {
	if(array_get_index(nisses_lista, other.id) < 0 and other != global.ida) {
		with(owner.owner) {
			var var_stored_damage = damage  ///element också!
			var var_stored_element = element
			var var_stored_damage_amplification = damage_amplification
			var var_stored_accuracy = accuracy
			element = ELEMENTS.fire
		}
		with(owner) {
			owner.damage = getAmount()
			owner.accuracy = accuracy
			owner.damage_amplification = 1
		}
		var var_target = other
		with(owner.owner) {
			scr_convert_damage_to_accuracy_included_damage(var_target)
		}
		attackEffectWrapper(owner.owner, other.id, true)
		array_push(nisses_lista, other.id)
		with(owner.owner) {
			damage = var_stored_damage
			element = var_stored_element
			accuracy = var_stored_accuracy
			damage_amplification = var_stored_damage_amplification
		}
	}
}
