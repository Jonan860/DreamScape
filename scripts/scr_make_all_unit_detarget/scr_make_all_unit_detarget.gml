
function unit_detarget(targeto){
	if(target == targeto) {
		scr_disblend_list(path)
		path = []
		scr_update_arrow_path()
		destination = noone
		target = noone
		phase = UNIT_PHASES.idle
		action_bar = 0
	}
}