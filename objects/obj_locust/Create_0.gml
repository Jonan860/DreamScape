event_inherited()
target = noone
damage_per_feed = owner.owner.getAmount()
feed_per_sec = 1
max_time_until_next_feed_sec = 1
time_until_next_feed_sec = max_time_until_next_feed_sec

time_between_direction_change = 0.5
time_until_next_direction_change = 0
food_amount = 0
max_food_amount = 10
element = ELEMENTS.nature
speed = 2 
distance_needed_to_enemy = sprite_get_width(spr_hexagon_pink) / 16
phase = UNIT_PHASES.searching //eating/returning
image_xscale = sprite_get_width(spr_hexagon_pink)/ 8 / sprite_width
image_yscale = sprite_get_height(spr_hexagon_pink) / 8 / sprite_height

save = function() {
	var s = {}
	s.x = x; s.y = y
	s.food_amount = food_amount
	s.target = target
	s.owner = owner
	return s
}

load = function(s) {
	x = s.x; y = s.y
	food_amount = s.food_amount
	target = s.target
	with(obj_unit) {
		loadFromIdd(s, "owner", "locust_swarm")
	}
}
