depth = -9999;
switch(async_load[? "event_type"]) {
	case "gamepad discovered":
		var description =  gamepad_get_description(async_load[? "pad_index"]);
		if (string_count("(", description) > 0) {
			description = string_delete(description, string_pos("(", description), string_length(description));	
		}
		toEnqueue = "Gamepad Connected: " + description;
		event_user(0);
		break;
	case "gamepad lost":
		toEnqueue = "Gamepad Disconnected";
		event_user(0);
		break;
}