if(instance_exists(target) and instance_exists(owner.owner) and scr_get_distance(owner.owner.tile, target.tile) <= owner.range) {
	x = (owner.owner.x + target.x) / 2
	y = (owner.owner.y + target.y) / 2
	image_xscale = point_distance(owner.owner.x, owner.owner.y, target.x, target.y) / sprite_width;
	image_angle = point_direction(owner.owner.x, owner.owner.y, target.x,  target.y);
	if(owner.owner.HP != owner.owner.max_HP and owner.owner.phase == UNIT_PHASES.channeling) {
		target.HP = min(target.max_HP, target.HP - owner.getAmount() / owner.getDuration() / game_get_speed(gamespeed_fps) * global.gamespeed) 
		owner.owner.HP = min(owner.owner.max_HP, owner.owner.HP + owner.getAmount() / owner.getDuration() / game_get_speed(gamespeed_fps) * global.gamespeed) 
		owner.owner.mana = max(0, owner.owner.mana - owner.getManaCost()  / owner.getDuration() / game_get_speed(gamespeed_fps) * global.gamespeed) 
	} else {
		instance_destroy()
	}
	
} else {
	instance_destroy()
}