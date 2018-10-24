x = initialPosition[0];
y = initialPosition[1];

initialFanPoint = [x,y];
leftFanPoint = [x,y];
rightFanPoint = [x,y];
while (leftFanPoint[0] > 0) {
	if (collision_point(leftFanPoint[0], leftFanPoint[1], Wall, true, true)) {
		break;	
	}
	--leftFanPoint[0];	
}

while (rightFanPoint[0] < room_width) {
	if (collision_point(rightFanPoint[0], rightFanPoint[1], Wall, true, true)) {
		break;	
	}
	++rightFanPoint[0];	
}

x = (rightFanPoint[0] + leftFanPoint[0]) / 2;

while (initialFanPoint[1] < room_height) {
	if (collision_point(initialFanPoint[0], initialFanPoint[1], Wall, true, true)) {
		break;	
	}
	++initialFanPoint[1];
}

x = leftFanPoint[0];
image_xscale = (rightFanPoint[0] - leftFanPoint[0]) / 3;
image_yscale = (initialFanPoint[1] - y) / 2;