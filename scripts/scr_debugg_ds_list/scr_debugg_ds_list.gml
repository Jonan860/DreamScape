
function scr_debugg_array(list) {
	if(array_equals(list, [])) {
		show_debug_message("list empty")
		exit;
	}
	var value
	for(var i = 0 ; i < array_length(list); i++) {
		value = list[i]
		show_debug_message("position " + string(i) + " value" + string(value))
	}
}
