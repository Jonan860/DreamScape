
if(scr_is_enemies(owner.owner, other.id)) {
	if(ds_list_find_index(nisses_lista, other.id) < 0 and other != global.ida) {
		var var_stored_damage = owner.owner.damage  ///element också!
		var var_stored_element = owner.owner.element
		owner.owner.element = ELEMENTS.fire
		owner.owner.damage = owner.getAmount()
		attackEffectWrapper(owner.owner, other.id)
		ds_list_add(nisses_lista, other.id)
		owner.owner.damage = var_stored_damage
		owner.owner.element = var_stored_element
	}
}
