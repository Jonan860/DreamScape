x = owner.owner.x; y = owner.owner.y
var varOwner = id
if(active_locusts < max_active_locusts and time_until_next_locust <= 0 and duration > 0) {
	instance_create_depth(x, y, 0, obj_locust, {owner : varOwner}) 
	active_locusts++
	time_until_next_locust = locust_spawn_interval_sec
} else {
	time_until_next_locust = max(0, time_until_next_locust - 1/room_speed * global.gamespeed)
}
duration -= 1/room_speed * global.gamespeed
if(duration <= 0 and !instance_exists(obj_locust)) {
	instance_destroy()
}

