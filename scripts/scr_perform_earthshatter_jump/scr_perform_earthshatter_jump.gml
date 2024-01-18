function scr_perform_earthshatter_jump() {
	if(point_distance(x, y, target.x, target.y) < 10) {
			scr_earthshatter_impact_perform()
	} else {
		image_xscale = spr_width / sprite_get_width(sprite_index) * (1 + 4/total_time_to_earthshatter_impact * time_until_earthshatter_impact * (total_time_to_earthshatter_impact - time_until_earthshatter_impact))
		image_yscale = spr_height / sprite_get_height(sprite_index) * (1 + 4/total_time_to_earthshatter_impact * time_until_earthshatter_impact * (total_time_to_earthshatter_impact - time_until_earthshatter_impact))
	}
}