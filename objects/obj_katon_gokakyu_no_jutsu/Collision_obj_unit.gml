
if(scr_is_enemies(owner.owner, other.id)) {
	if(array_get_index(nisses_lista, other.id) < 0 and other != global.ida) {
		with(owner.owner) {
			var var_stored_damage = damage  ///element också!
			var var_stored_element = element
			var var_stored_accuracy = accuracy
			element = ELEMENTS.fire
		}
		with(owner) {
			owner.damage = getAmount()
			owner.accuracy = accuracy
		}
		with(owner.owner) {
			scr_convert_damage_to_accuracy_included_damage(other.id)
		}
		attackEffectWrapper(owner.owner, other.id, true)
		array_push(nisses_lista, other.id)
		with(owner.owner) {
			damage = var_stored_damage
			element = var_stored_element
			accuracy = var_stored_accuracy
		}
	}
}
