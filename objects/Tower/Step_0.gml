cooldown = max(0, cooldown - 1);
special_cooldown = max(0, special_cooldown - 1);
if (World.Selected == index) {
	
	if (KeyMapper.Mapping == "Gamepad") {
		fire_angle = point_direction(0, 0, KeyMapper.Values[? "Aim X"], KeyMapper.Values[? "Aim Y"]);	
	}
	else if (KeyMapper.Mapping == "Keyboard & Mouse") {
		fire_angle = point_direction(x, y, KeyMapper.Values[? "Aim X"], KeyMapper.Values[? "Aim Y"]);	
	}
	else if (KeyMapper.Mapping == "Keyboard") {
		fire_angle += KeyMapper.Values[? "RotLeft"] - KeyMapper.Values[? "RotRight"];
	}
	
	if (KeyMapper.Values[? "Normal"] && cooldown <= 0) {
		with (instance_create_layer(x, y, "Bullets", Bullet)) {
			speed = 8;
			direction = other.fire_angle;
		}
		cooldown = max_cooldown;
	}
	if (KeyMapper.Values[? "Special"] && special_cooldown <= 0) {
		special_cooldown = max_special_cooldown;
	}
}