function scr_get_idd(inst){
	if(inst == noone or is_undefined(inst) or inst.object_index == obj_crystal) {
		return noone
	} else {
		return inst.idd
	}
}