x1 = x - string_width(text)/2 - 4;
y1 = y - string_height(text)/2 - 4;
x2 = x1 + string_width(text) + 8;
y2 = y1 + string_height(text) + 8;

over = false;
pressed = false;
if (instance_exists(MenuControl)) {
	if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
		if (mouse_x != mouse_ox || mouse_y != mouse_oy) {
			MenuControl.selected = buttonId;
		}
		if (mouse_check_button(mb_left)) {
			pressed = true;
		}
	}

	over = (MenuControl.selected == buttonId);
	if (over) {
		pressed = pressed || MenuControl.selectionPressed;
	}
}

if (over && was_pressed && !MenuControl.selectionPressed && !is_undefined(execution)) {
	script_execute(execution, buttonId);
}

was_pressed = MenuControl.selectionPressed;
mouse_ox = mouse_x;
mouse_oy = mouse_y;