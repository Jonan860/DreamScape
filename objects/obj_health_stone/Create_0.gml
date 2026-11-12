// Inherit the parent event
event_inherited();
Consume_Heal  = 150
hp_regen = 1

left_pressed = function() {
	with(owner) {
		HP = min(max_HP, HP + Consume_Heal)
	}
	instance_destroy()
}

info = "Health Stone : Increases the life regeneration rate of the Hero by 1 hit points per second when worn. \n Can be consumed for 500 health. "