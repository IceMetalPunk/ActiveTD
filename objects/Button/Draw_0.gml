draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_ltgray);
if (over) {
		draw_set_color(c_gray);
}
draw_button(x1, y1, x2, y2, !pressed);

draw_set_color(c_black);
draw_text(x, y, text);