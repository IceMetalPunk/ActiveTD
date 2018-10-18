var down = keyboard_check(vk_down), up = keyboard_check(vk_up);
selectionPressed = keyboard_check(vk_space);
if (gamepad_is_connected(0)) {
	down = down || (gamepad_axis_value(0, gp_axislv) > 0.5);
	up = up || (gamepad_axis_value(0, gp_axislv) < -0.5);
	selectionPressed = selectionPressed || gamepad_button_check(0, gp_face1);
}

selectionCooldown = max(0, selectionCooldown - 1);
if (down && selectionCooldown <= 0) {
	selectionCooldown = maxSelectionCooldown;	
	selected = (selected + 1) % instance_number(Button);
}
else if (up && selectionCooldown <= 0) {
	selectionCooldown = maxSelectionCooldown;
	selected = (selected - 1 + instance_number(Button)) % instance_number(Button);
}