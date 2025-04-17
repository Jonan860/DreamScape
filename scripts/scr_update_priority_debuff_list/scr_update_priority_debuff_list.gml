function scr_sort_debuff_list_after_dispellity() {
	var priority_list = []
	for(var i = 0; i < array_length(list_of_active_debuff_structs); i++) {
		var debuff = list_of_active_debuff_structs[i]
		var own_priority_number = debuff.duration / debuff.total_duration * debuff.spellHealth
		for(var j = 0; j <= array_length(priority_list); j++) {
			if(j == array_length(priority_list)) {
				array_push(priority_list, debuff)
				break;
			}
			var compare_debuff = priority_list[j]
			var compare_number = compare_debuff.duration / compare_debuff.total_duration * compare_debuff.spellHealth

			if(own_priority_number < compare_number and own_priority_number >= 0) {
				array_insert(priority_list, j, debuff)
				break;
			}
  
		}
	}
	list_of_active_debuff_structs = priority_list
}