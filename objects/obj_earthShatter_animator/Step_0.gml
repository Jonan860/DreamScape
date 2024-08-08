if(jumping) {
	var distance = point_distance(owner.owner.x, owner.owner.y, target._x, target._y)
	if(distance < 10) {
		jumping = 0
		scr_earthshatter_impact_perform()
	} else {
		var time_until_earthshatter_impact = distance / sprite_get_height(spr_hexagon_pink)/2
		var scaling = 1 + 4 / total_time_to_earthshatter_impact * time_until_earthshatter_impact * (total_time_to_earthshatter_impact - time_until_earthshatter_impact)
		with(owner.owner) {
			image_xscale = spr_width / sprite_get_width(sprite_index) * scaling
			image_yscale = spr_height / sprite_get_height(sprite_index) * scaling
		}
	}
} else {
	time_until_earthshatter_gone -= 1/room_speed
	if(time_until_earthshatter_gone <= 0) {
		instance_destroy()
	}
}