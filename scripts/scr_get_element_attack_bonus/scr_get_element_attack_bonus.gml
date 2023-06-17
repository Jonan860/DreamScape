/// @scr_get_element_bonus(attack_element, defence_element)
/// @param attack_element	
/// @param defence_element
function scr_get_element_attack_bonus(argument0, argument1) {
var 	attack_element=argument0
var	defence_element=argument1
	switch (attack_element)
	{
	case "normal": 
	switch(defence_element)
	{
	case "normal": return 1; break;
	}
	default: return 1;
	}


}
