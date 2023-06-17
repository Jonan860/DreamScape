function scr_attack_target_lich() {
	if(object_index=obj_lich)
	{
	magic_ball=instance_create_depth(x,y,-4,obj_magic_projectile)
	//magic_ball.image_blend=c_yellow
	magic_ball.owner=id
	magic_ball.image_angle=point_direction(x,y,target.x,target.y)
	//magic_ball.damage=damage
///	magic_ball.element=element
	magic_ball.direction=point_direction(x,y,target.x,target.y)
	magic_ball.speed=4
	magic_ball.sprite_index=spr_frost_bolt
	magic_ball.target_tile=target.tile
//	magic_ball.accuracy=accuracy
	magic_ball.altitude=target.altitude
	
	
	}


}
