if (can_scroll) {
	var axis = 0;
	if (gamepad_is_connected(0)) {
		axis = gamepad_axis_value(0, gp_axislh);
	}
	if (axis > 0.5 || keyboard_check(vk_right)) {
		current_layout_index = (current_layout_index + 1) % layout_count;
		current_screen = layout_names[current_layout_index];
		event_user(0);
		can_scroll = false;	
	}
	else if (axis < -0.5 || keyboard_check(vk_left)) {
		current_layout_index = (current_layout_index - 1 + layout_count) % layout_count;
		current_screen = layout_names[current_layout_index];
		event_user(0);
		can_scroll = false;	
	}
}

if (!keyboard_check(vk_left) && !keyboard_check(vk_right)) {
	if (!gamepad_is_connected(0) || abs(gamepad_axis_value(0, gp_axislh)) < 0.5) {
		can_scroll = true;
	}
}