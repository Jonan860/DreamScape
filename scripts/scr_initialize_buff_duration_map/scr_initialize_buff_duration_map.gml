function scr_initialize_debuff_duration_map() {
	ds_map_add(map_of_debuff_duration, global.curse_struct, 0)
	ds_map_add(map_of_debuff_duration, global.slow_struct, 0)
	ds_map_add(map_of_debuff_duration, global.freeze_struct, 0)
}