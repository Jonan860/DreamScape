
function scr_debugg_ds_list(list) {
	if(ds_list_empty(list)) {
		show_debug_message("list empty")
		exit;
	}
	var value
	for(var i = 0 ; i < ds_list_size(list); i += 1) {
		value = list[|i]
		show_debug_message("position " + string(i) + " value" + string(value))
	}
}
