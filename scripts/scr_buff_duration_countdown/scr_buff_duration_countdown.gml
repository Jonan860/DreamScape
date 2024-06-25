
function scr_buff_duration_countdown() {
	with(obj_unit) {
		var list_size = array_length(list_of_active_debuff_structs)
		for(var i = 0; i < list_size; i++) {
			var structu = list_of_active_debuff_structs[i]
			structu.duration -= 1/room_speed
			if(structu.duration <= 0) {
				structu.unapply() //need to be called from unit
				list_of_active_debuff_structs = array_filter(list_of_active_debuff_structs, function(value, index) {return index != self.i})
				//array_remove_value(list_of_active_debuff_structs, structu)
				i--
				list_size--
			}
		}
	}
}