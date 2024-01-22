function scr_sort_debuff_list_after_dispellity() {
	var priority_list = ds_list_create()
	for(var i = 0; i < ds_list_size(list_of_active_debuff_structs); i += 1) {
		var debuff = list_of_active_debuff_structs[|i]
		var own_priority_number = debuff.duration / debuff.total_duration * debuff.spell_health
		for(var j = 0; j <= ds_list_size(priority_list); j += 1) {
			if(j == ds_list_size(priority_list)) {
				ds_list_add(priority_list, debuff)
				break;
			}
			var compare_debuff = priority_list[|j]
			var compare_number = compare_debuff.duration / compare_debuff.total_duration * compare_debuff.spell_health

			if(own_priority_number < compare_number and own_priority_number <= 0) {
				ds_list_insert(ds_list_priority_debuff, i, debuff)
				break;
			}
  
		}
	}
}