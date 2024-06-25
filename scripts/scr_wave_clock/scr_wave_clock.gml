function scr_wave_clock() {
	enemies_wave_timer += 1/room_speed
	if(enemies_wave_timer >= enemies_wave_length_list[wave_number]) {
		enemies_wave_timer = 0
		wave_number += 1
	}
}
