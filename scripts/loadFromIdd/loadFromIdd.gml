function loadFromIdd(s, variableNameSelf, variableNameOther = "id") {
	if(idd == variable_struct_get(s, variableNameSelf)) {
		variable_instance_set(other, variableNameSelf, variable_instance_get(id, variableNameOther))
	}
}





