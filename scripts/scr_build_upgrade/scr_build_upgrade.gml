
function scr_build_upgrade(obj_index) {
	switch(obj_index) {
		case obj_footman_defend_upgrade : scr_build_defend_upgrade(); break;
		case obj_improved_bows_upgrade : scr_build_improved_bows(); break;
		case obj_sorceress_invisibility_upgrade : scr_build_invisibilty_upgrade(); break;
	}
}
