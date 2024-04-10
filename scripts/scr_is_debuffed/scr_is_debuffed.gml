
function scr_is_debuffed(debuffEnum) {
	var list_size = ds_list_size(list_of_active_debuff_structs)
	for(var i = 0; i < list_size; i += 1) {
		if(list_of_active_debuff_structs[|i].Enum == debuffEnum) {
			return true
		}
	}
	return false
}