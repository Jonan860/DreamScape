

function scr_attack_target_meelee(anim_object) {
    attackEffectWrapper(id, target);
	var inst = instance_create_depth((x + target.x) / 2, (y + target.y) / 2, -10, anim_object);
    with (inst) {
        image_angle = point_direction(other.x, other.y, other.target.x, other.target.y) + angle_offset;
        image_xscale = other.sprite_width / 2 / sprite_width;
		image_yscale = other.sprite_height / 2 / sprite_height;
        image_yscale *= (1 - 2 * (image_angle < 270 && image_angle > 90));
        alarm[0] = room_speed / 2;
    }
}
