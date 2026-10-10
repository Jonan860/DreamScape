function scr_get_idd(inst){
	if(inst == noone or !instance_exists(inst) or inst.object_index == obj_crystal) {
		return noone
	} else {
		return inst.idd
	}
}