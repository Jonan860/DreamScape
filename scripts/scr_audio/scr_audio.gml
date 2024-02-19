function scr_audio() {
	var var_any_music_is_playing = 0
	for(var i = 0; i <= ds_list_size(list_jukebox) - 1; i += 1) {
		var var_music = list_jukebox[|i]
		if(audio_is_playing(var_music)) {
			var_any_music_is_playing = 1
		}
	}

	if(!var_any_music_is_playing) {
		var var_number = irandom(ds_list_size(list_jukebox) - 1)
		var var_music_to_play = list_jukebox[|var_number]
		audio_play_sound(var_music_to_play, 0, 0)
	}
}