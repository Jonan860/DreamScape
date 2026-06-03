function scr_lose_condition_check_and_perform() {
	if(global.lille_skutt.phase == UNIT_PHASES.dead and global.nils.phase == UNIT_PHASES.dead and global.ida.phase == UNIT_PHASES.dead or global.nils.HP <= 0 and global.nils.eaten) {
		lose_text = (global.nils.HP <= 0 and global.nils.eaten) ? "Nils got eaten''!" : "All heroes ''fainted''!"
		room_goto(room_lose)
	}
}
