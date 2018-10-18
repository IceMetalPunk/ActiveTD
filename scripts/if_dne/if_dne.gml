/// if_dne(variable_name, new_value[, isGlobal?])
/*
Will set the variable named variable_name (either in the current instance or global if isGlobal is true) to the
new_value if it doesn't exist. If it exists already, it's left alone.

Returns: The final value of the variable.
*/
var variable_name = argument0, new_value = argument1, isGlobal = false;
if (argument_count >= 3) {
	isGlobal = argument[2];	
}
if (!isGlobal) {
	if (variable_instance_exists(id, variable_name)) {
		return variable_instance_get(id, variable_name);	
	}
	variable_instance_set(id, variable_name, new_value);
	return new_value;
}
else {
	if (variable_global_exists(variable_name)) {
		return variable_global_get(variable_name);	
	}
	variable_global_set(variable_name, new_value);
	return new_value;
}