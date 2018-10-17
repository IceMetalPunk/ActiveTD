draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_self();
if (World.Selected == index) {
	draw_circle_color(x - 0.5, y - 0.5, 20, c_black, c_black, true);
	draw_circle_color(x - 0.5 + lengthdir_x(20, fire_angle), y - 0.5 + lengthdir_y(20, fire_angle), 3, c_red, c_red, false);
}
else if ((World.Selected + 1) % instance_number(Tower) == index) {
	draw_text(x - 0.5, y - 0.5, "+");
}
else if ((World.Selected - 1 + instance_number(Tower)) % instance_number(Tower) == index) {
	draw_text(x - 0.5, y - 0.5, "-");
}

var recharge = 100 * (max_special_cooldown - special_cooldown) / max_special_cooldown;
draw_healthbar(x-16, y-19, x+16, y-17, recharge, c_white, c_black, c_red, 0, true, true);