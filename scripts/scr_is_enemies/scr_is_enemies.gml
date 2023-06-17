/// scr_is_enemies(self,other)
/// @description scr_is_enemies(self,other)
/// @param self
/// @param other
function scr_is_enemies(argument0, argument1) {

	var selff=argument0
	var otherr=argument1

	if((selff.owner=global.player and (otherr.owner=global.enemy or otherr.owner=global.creep_lord)) or ((selff.owner=global.enemy or selff.owner=global.creep_lord) and otherr.owner=global.player))
	{
	     return 1
	}
	else
	{
		return 0
	}


}
