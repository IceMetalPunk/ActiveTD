if (Mapping == "Keyboard") {
	Values[? "Left"] = keyboard_check(Keyboard[? "Swap Left"]);
	Values[? "Right"] = keyboard_check(Keyboard[? "Swap Right"]);
	Values[? "RotLeft"] = keyboard_check(Keyboard[? "Rotate Left"]);
	Values[? "RotRight"] = keyboard_check(Keyboard[? "Rotate Right"]);
	Values[? "Normal"] = keyboard_check(Keyboard[? "Fire Normal"]);
	Values[? "Special"] = keyboard_check(Keyboard[? "Fire Special"]);
}
else if (Mapping == "Keyboard & Mouse") {
	Values[? "Left"] = keyboard_check(KeyboardMouse[? "Swap Left"]);
	Values[? "Right"] = keyboard_check(KeyboardMouse[? "Swap Right"]);
	Values[? "Normal"] = mouse_check_button(KeyboardMouse[? "Fire Normal"]);
	Values[? "Special"] = mouse_check_button(KeyboardMouse[? "Fire Special"]);
	Values[? "Aim X"] = mouse_x;
	Values[? "Aim Y"] = mouse_y;
}
else if (Mapping == "Gamepad" && gamepad_is_connected(0)) {
	Values[? "Left"] = gamepad_button_check(0, Gamepad[? "Swap Left"]);
	Values[? "Right"] = gamepad_button_check(0, Gamepad[? "Swap Right"]);
	Values[? "Normal"] = gamepad_button_check(0, Gamepad[? "Fire Normal"]);
	Values[? "Special"] = gamepad_button_check(0, Gamepad[? "Fire Special"]);
	
	var stick_dist = [gamepad_axis_value(0, Gamepad[? "Aim Stick"]), gamepad_axis_value(0, Gamepad[? "Aim Stick"] + 1)];
	if (point_distance(0, 0, stick_dist[0], stick_dist[1]) >= 0.5) {
		Values[? "Aim X"] = stick_dist[0];
		Values[? "Aim Y"] = -stick_dist[1];
	}
}