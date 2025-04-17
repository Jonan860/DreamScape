function scr_pause() {
	if (keyboard_check_pressed(ord("P"))) {
	    paused = !paused;
	    if (!paused) {
			instance_activate_all();
			surface_free(paused_surf);
			paused_surf = -1;
	    }
	}
	if (paused) {
		alarm[0]++;
		alarm[1]++;
	}
}
