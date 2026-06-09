
function scr_is_debuffed(debuffEnum) {
	for(var i = 0; i < array_length(list_of_active_debuff_structs); i++) {
		if(list_of_active_debuff_structs[i].Enum == debuffEnum) {
			return true
		}
	}
	return false
}

function scr_is_buffed(debuffEnum) {
	for(var i = 0; i < array_length(list_of_active_buff_structs); i++) {
		if(list_of_active_buff_structs[i].Enum == debuffEnum) {
			return true
		}
	}
	return false
}

function find_active_debuff(debuffEnum) {
	for(var i = 0; i < array_length(list_of_active_debuff_structs); i++) {
		if(list_of_active_debuff_structs[i].Enum == debuffEnum) {
			return list_of_active_debuff_structs[i]
		}
	}
	return noone
}

function find_active_buff(debuffEnum) {
	for(var i = 0; i < array_length(list_of_active_buff_structs); i++) {
		if(list_of_active_buff_structs[i].Enum == debuffEnum) {
			return list_of_active_buff_structs[i]
		}
	}
	return noone
}