
function scr_is_debuffed(global_struct){
	var list_size = ds_list_size(list_of_active_debuff_structs)
	for(var i = 0; i < list_size; i += 1) {
		var structu = list_of_active_debuff_structs[|i]
		if(structu.global_struct = global_struct) {
			return 1
		}
	}
	return 0
}