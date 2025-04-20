
if(instance_exists(target) and instance_exists(owner.owner) and scr_get_distance(owner.owner.tile, target.tile) <= owner.range) {
	x = (owner.owner.x + target.x) / 2
	y = (owner.owner.y + target.y) / 2
	
	if(target.HP != target.max_HP) {
		target.HP = min(target.max_HP, target.HP + owner.getAmount()) / game_get_speed(gamespeed_fps) * global.gamespeed
		owner.owner.mana = max(0, owner.owner.mana - owner.getManaCost()) / game_get_speed(gamespeed_fps) * global.gamespeed
	} else {
		instance_destroy()
	}
	
} else {
	instance_destroy()
}