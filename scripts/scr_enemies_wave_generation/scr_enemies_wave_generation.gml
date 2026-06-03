function scr_enemies_wave_generation() {
	if(wave_number < array_length(enemies_wave_length_list)) {
		scr_wave_clock()
		scr_wave_generate()
	}
}
