x = owner.owner.x; y = owner.owner.y

duration -=  1 / room_speed * global.gamespeed

if(duration > 0) {
	if(owner.owner.phase = UNIT_PHASES.gosing) {
		owner.owner.target.HP -=  owner.getAmount() / room_speed * global.gamespeed
		owner.owner.target.mana = max( owner.owner.target.mana - owner.getAmount() / room_speed * global.gamespeed, 0)
		owner.owner.HP = min(owner.owner.HP + owner.getAmount() / room_speed * global.gamespeed, owner.owner.max_HP)
		owner.owner.mana = min(owner.owner.mana + owner.getAmount() / room_speed * global.gamespeed, owner.owner.max_mana)
		
		// Justera var hjärtana ska skapas. Här skapas de längs hela skärmens bredd, precis under botten.
		if(irandom(20) == 1) {
			var _spawn_x = x + (random(sprite_get_width(spr_hexagon_pink)) - sprite_get_width(spr_hexagon_pink) / 2) / 4;
			var _spawn_y = y + sprite_get_height(spr_hexagon_pink)/4;

			// Skapa 1 hjärta per step (du kan ändra chansen med en "if (random(100) < 20)" om det blir för många)
			part_particles_create(global.part_system, _spawn_x, _spawn_y, global.part_heart, 1);
		}
	}
}
else{
	instance_destroy()
}