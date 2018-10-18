switch(async_load[? "event_type"]) {
	case "gamepad discovered":
		if (instance_exists(KeybindMenu)) {
			Mapping = "Gamepad";	
		}
		break;
	case "gamepad lost":
		if (!gamepad_is_connected(0)) {
			Mapping = "Keyboard & Mouse";	
		}
		break;
}