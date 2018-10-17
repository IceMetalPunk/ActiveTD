var str = "";
for (var i = 0; i < gamepad_button_count(0); ++i) {
	if (gamepad_button_check(0, i)) {
		str += string(i) + "\n";
	}
}
draw_text(10, 10, str);