/// scr_is_attack_hittin(accuracy,evasivness)
/// @param accuracy
/// @param evasiveness
function scr_is_attack_hitting(argument0, argument1) {

	var var_accuracy=argument0
	var var_evasiveness=argument1
	return random(1)<1-power(var_evasiveness,var_accuracy)


}
