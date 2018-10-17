if (phase < 3) {
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	var offset = 0;
	switch (phase) {
		case 0:
			animation_percent = min(1, animation_percent + 0.05);
			offset = (5 - string_width(current_message)) * (1 - animation_percent) + 5;
			break;
		case 1:
			animation_percent = min(1, animation_percent + 0.01);
			offset = 5;
			break;
		case 2:
			animation_percent = min(1, animation_percent + 0.05);
			offset = (5 - string_width(current_message)) * animation_percent + 5;
			break;
	}
	
	if (current_message != "") {
		draw_set_alpha(0.5);
		draw_set_color(c_white);
		draw_rectangle(0, 0, offset + string_width(current_message) + 10, 10 + string_height(current_message), false);
		draw_set_color(c_black);
		draw_set_alpha(1);
		draw_text(offset, 5, current_message);
	}
	
	if (animation_percent >= 1) {
		animation_percent = 0;
		if (++phase >= 3) {
			ds_queue_dequeue(messages);
			if (ds_queue_size(messages) > 0) {
				current_message = ds_queue_head(messages);
				phase = 0;
			}
			else {
				current_message = "";
			}
		}
	}
}