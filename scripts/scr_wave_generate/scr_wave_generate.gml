function scr_wave_generate() {
	if(enemies_wave_timer = 0 and wave_number <= array_length(wave_list)) {
		var var_wave = wave_list[wave_number - 1]
		var var_wave_x = wave_x_list_of_lists[wave_number - 1]
		for(var j = 0; j < array_length(var_wave); j++) {
			var var_object = var_wave[j]
			var var_x = var_wave_x[j]
			loopTilesStart
				if(tile_y == 0 or tile_y == -1) {
					if(tile_x == var_x) {
						var instance = scr_instance_create_at_tile_with_owner(var_object, self, global.enemy)
						switch(instance.object_index) {
							case obj_lich :
								with(instance) {
									repeat(3) {
										scr_level_up()
									}
									frost_nova.lvl = 2
									dark_ritual.lvl = 1
								}
								break;
							case obj_dreadlord : 
								with(instance) {
									repeat(5) {
										scr_level_up()
									}
									sleep.lvl = 2
									vampiric_aura.lvl = 3
									vampiric_aura.iconPerform()
								}
								break;
							case obj_crypt_lord :
								with(instance) {
									repeat(7) {
										scr_level_up()
									}
									spiked_carapace.lvl = 3
									carrion_beetles.lvl = 3
									locust_swarm.lvl = 1
								}
								break;
						}
						break;
					}
				}
			loopTilesEnd
		}
	}
}
