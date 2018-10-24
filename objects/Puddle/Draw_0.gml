PUDDLE_WIDTH = rightFanPoint[0] - leftFanPoint[0];
PUDDLE_HEIGHT = initialFanPoint[1] - y;

draw_primitive_begin_texture(pr_trianglefan, waterTexture);

var u = (initialFanPoint[0] - leftFanPoint[0]) / PUDDLE_WIDTH;
draw_vertex_texture(initialFanPoint[0], initialFanPoint[1], u, 1);
draw_vertex_texture(leftFanPoint[0], initialFanPoint[1], 0, 1);

WAVE_AMPLITUDE = 3;
WAVELENGTH = 1;
waveTheta = (waveTheta + random_range(0.05, 0.1)) % (2 * pi);
var yy;
for (var xx = leftFanPoint[0]; xx <= rightFanPoint[0]; ++xx) {
	yy = y + WAVE_AMPLITUDE * sin(WAVELENGTH * (waveTheta + 2*pi*(xx - leftFanPoint[0]) / PUDDLE_WIDTH));
	u = (xx - leftFanPoint[0]) / PUDDLE_WIDTH;
	draw_vertex_texture(xx, yy, u, 0);	
}

draw_vertex_texture(rightFanPoint[0], initialFanPoint[1], 1, 1);
draw_primitive_end();

if (y < initialFanPoint[1]) {
	if (collision_point(mouse_x, mouse_y, id, true, false)) {
		y += 0.5;
		initialPosition[1] = y;
	}
}
else if (y >= initialFanPoint[1]) {
	effect_create_above(ef_smokeup, (rightFanPoint[0] + leftFanPoint[0]) / 2, y, 2, c_gray);
	instance_destroy();	
}