x = owner.owner.x; y = owner.owner.y

duration -=  1 / room_speed * global.gamespeed

if(duration > 0) {
	if(owner.owner.phase = UNIT_PHASES.gosing) {
		owner.owner.target.HP -=  owner.getAmount() / room_speed * global.gamespeed
		owner.owner.target.mana = max( owner.owner.target.mana - owner.getAmount() / room_speed * global.gamespeed, 0)
		owner.owner.HP = min(owner.owner.HP + owner.getAmount() / room_speed * global.gamespeed, owner.owner.max_HP)
		owner.owner.mana = min(owner.owner.mana + owner.getAmount() / room_speed * global.gamespeed, owner.owner.max_mana)
	}
}
else{
	instance_destroy()
}