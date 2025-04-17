function scr_attack_target_ghoul() {
	if(object_index=obj_ghoul)
	{
		scr_attack_hp_reduction(self,target)
	var scratch=instance_create_depth((x+target.x)/2,(y+target.y)/2,-10,obj_scratch_attack)
	scratch.image_angle=90+point_direction(x,y,target.x,target.y)
	scratch.image_xscale=(sprite_width/2)/scratch.sprite_width
	scratch.image_yscale=(sprite_height/2)/scratch.sprite_height
	scratch.alarm[0]=game_get_speed(gamespeed_fps)/2
	}


}
