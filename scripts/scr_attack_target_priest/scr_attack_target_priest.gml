// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_attack_target_priest()
{
	if(object_index=obj_priest)
	{
	magic_ball=instance_create_depth(x,y,-4,obj_magic_projectile)
	magic_ball.image_blend=c_aqua
	magic_ball.image_angle=point_direction(x,y,target.x,target.y)
	magic_ball.owner=id
	//magic_ball.damage=damage
//	magic_ball.element=element
	magic_ball.direction=point_direction(x,y,target.x,target.y)
	magic_ball.speed=4
	magic_ball.target_tile=target.tile
	//magic_ball.accuracy=accuracy
	magic_ball.altitude=target.altitude
	}
}