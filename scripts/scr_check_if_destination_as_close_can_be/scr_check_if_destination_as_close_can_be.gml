function scr_check_if_destination_as_close_can_be() {
	if(array_length(path) == 1) {
		scr_disblend_list(path)
		path = []
	}
}
