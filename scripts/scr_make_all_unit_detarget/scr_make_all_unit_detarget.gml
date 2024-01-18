
function scr_make_all_unit_detarget(targeto){
	with(obj_unit) {
		if(target == targeto) {
			scr_disblend_list(path)
			ds_list_clear(path)
			scr_update_arrow_path()
			destination = noone
			target = noone
			phase = "idle"
			action_bar = 0
		}
	}
}