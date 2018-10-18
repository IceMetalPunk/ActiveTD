if (over && pressed && point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
		pressed = false;
		if (!is_undefined(execution)) {
			script_execute(execution, buttonId);	
		}
}