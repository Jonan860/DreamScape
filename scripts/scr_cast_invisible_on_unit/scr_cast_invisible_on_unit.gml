function scr_cast_invisible_on_unit(var_unit){
	scr_cloak_unit(var_unit)
	with(var_unit) {
		invisible_time_left = global.invisibility_struct.duration
		invisible = 1
	}
}