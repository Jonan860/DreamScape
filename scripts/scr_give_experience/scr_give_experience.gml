function scr_give_experience() {
	if(owner == global.enemy or owner == global.creep_lord) {
		with(obj_hero) {
			if(!eaten or phase == "dead") {
				experience += other.experience_to_give
				scr_level_up_if_needed()
			}
		}
	}
}
