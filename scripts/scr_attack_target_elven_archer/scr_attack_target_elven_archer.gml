function scr_attack_target_elven_archer() {
	if(object_index=obj_elven_archer)
	{
	magic_ball=instance_create_depth(x,y,-4,obj_arrow_attack)
	magic_ball.owner=id
	magic_ball.target_tile=target.tile
	magic_ball.altitude=target.altitude
	magic_ball.image_angle=point_direction(x,y,target.x,target.y)
	//magic_ball.damage=damage
	//magic_ball.element=element
	magic_ball.direction=point_direction(x,y,target.x,target.y)
	magic_ball.speed=4
	//magic_ball.target_tile=target.tile
	//magic_ball.accuracy=accuracy
	//magic_ball.altitude=target.altitude*/
	}


}
