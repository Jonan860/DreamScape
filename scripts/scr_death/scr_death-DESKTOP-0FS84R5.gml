function scr_death() {
	if(object_get_parent(object_index)=obj_summon)
	{
	var time_has_runned_out=summon_time_left<=0
	}
	else
	{var time_has_runned_out=0}
	if(HP<=0 and phase!="dead" or time_has_runned_out)
	{
		scr_give_experience()
		if(global.game.unit_to_kawarimi1=self or global.game.unit_to_kawarimi2=self)
		{
		global.game.unit_to_kawarimi1=noone
		global.game.unit_to_kawarimi2=noone
		}
		with(obj_unit)
		{
		if(scr_is_enemies(other,self))
		{
		if(target==other)
		{
			scr_disblend_list(path)
			ds_list_clear(path)
			scr_update_arrow_path()
			destination=noone
		target=noone
		phase="idle"
		action_bar=0
		}
		}
		}
	
		if(ds_map_find_value(tile.occupants,"ground")==self)  ///use altitude for generalizatiom!
		{ 
			ds_map_replace(tile.occupants,"ground",noone)
			if(object_index=obj_hungry_hungry_lizard)
			{
			if(object_in_stomach!=noone)
			{
		object_in_stomach.eaten=0
		object_in_stomach.tile=tile
		object_in_stomach.x=x
		object_in_stomach.y=y
		ds_map_replace(tile.occupants,"ground",object_in_stomach)
			}
			}
	
		}
		if(global.tile_selected!=noone)
		{
		if(global.tile_selected.selected_unit==self)
		{
		global.tile_selected=noone
		}
		}
		//if(object_get_parent(object_index)!=obj_hero and object_index!=obj_lille_skutt)
	
		
	///instance_destroy()
	if(object_get_parent(object_index)!=obj_summon)
	{
	if(object_get_parent(object_index)!=obj_hero and object_index!=obj_lille_skutt or object_is_ancestor(object_index,obj_hero) and owner=global.enemy)
	{
	var soul=instance_create_depth(x,y,depth,obj_soul)
	soul.object=self.object_index
	soul.tile=tile
	soul.image_xscale=soul.tile.sprite_width/soul.sprite_width
	soul.image_yscale=soul.tile.sprite_height/soul.sprite_height
	}
	else
	{
		phase="dead"

		HP=1
		ds_map_replace(tile.occupants,"ground",noone)

	var soul=instance_create_depth(x,y,depth,obj_soul_hero)
	soul.instance=self
	soul.tile=tile
		target=noone
		tile=noone
		x=-1000
		y=-1000
	soul.image_xscale=soul.tile.sprite_width/soul.sprite_width
	soul.image_yscale=soul.tile.sprite_height/soul.sprite_height
	}

	}
	scr_disblend_list(path)
	if(object_get_parent(object_index)!=obj_hero and object_index!=obj_lille_skutt or owner=global.enemy)
	{
		if(object_index==obj_golden_dragon)
		{
		with(obj_light_beam)
		{
			if(creator=other)
			{
			instance_destroy()
			}
		}
		}
	instance_destroy()
	}
	}


}
