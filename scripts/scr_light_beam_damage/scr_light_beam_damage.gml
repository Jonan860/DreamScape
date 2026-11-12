//function scr_beam_damage() {
//	with(obj_beam) {
//		var var_beam = id
//		with(obj_unit) {
//			if(place_meeting(x, y, var_beam)) {
//				if(scr_is_enemies(id, var_beam.owner)) {
//					var HP1 = HP
//					attackEffectWrapper(var_beam.owner, id) ////decrease total hp by total amount of damage over
//					HP = HP1 - (HP1 - HP) / (2 * room_speed)
//				}
//			}
//		}
//	}
//}

function scr_beam_damage() {
    with (obj_beam) {
        var beam_owner = owner;
		var beam_length = sprite_width
		var beam_height = sprite_height
        // Beam origin and endpoint
        var x1 = x - beam_length * cos(degtorad(image_angle)) / 2;
        var y1 = y + beam_length * sin(degtorad(image_angle)) / 2;
        var x2 = x + beam_length * cos(degtorad(image_angle)) / 2;
        var y2 = y - beam_length * sin(degtorad(image_angle)) / 2;

        with (obj_unit) {
            // Check whether this unit intersects the beam line
            var hit = collision_line(
                x1, y1, x2, y2,
                id, false, false
            );

            if (hit == id) {
                if (scr_is_enemies(id, beam_owner)) {
                    var HP1 = HP;
                    attackEffectWrapper(beam_owner, id);
                    HP = HP1 - (HP1 - HP) / (2 * room_speed);
                }
            }
        }
    }
}
