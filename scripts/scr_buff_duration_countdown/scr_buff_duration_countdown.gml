
function scr_buff_duration_countdown() {
	with(obj_unit) {
		var list_size = ds_list_size(list_of_active_debuff_structs)
		for(var i = 0; i < list_size; i += 1) {
			var structu = list_of_active_debuff_structs[|i]
			structu.duration -= 1/room_speed
			if(structu.duration <= 0) {
				structu.unapply() //need to be called from unit
				scr_ds_list_remove_value(list_of_active_debuff_structs, structu)
				i -= 1
				list_size -= 1
			}
		}
	}
}