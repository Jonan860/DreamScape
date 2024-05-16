
function scr_is_debuffed(debuffEnum) {
	for(var i = 0; i < ds_list_size(list_of_active_debuff_structs); i += 1) {
		if(list_of_active_debuff_structs[|i].Enum == debuffEnum) {
			return true
		}
	}
	return false
}

function find_active_debuff(debuffEnum) {
	for(var i = 0; i < ds_list_size(list_of_active_debuff_structs); i += 1) {
		if(list_of_active_debuff_structs[|i].Enum == debuffEnum) {
			return list_of_active_debuff_structs[|i]
		}
	}
	return noone
}