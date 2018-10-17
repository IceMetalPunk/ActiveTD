var left = KeyMapper.Values[? "Left"], right = KeyMapper.Values[? "Right"];

if (!previousLeft && left) {
	Selected = (Selected - 1 + instance_number(Tower)) % instance_number(Tower);
}
else if (!previousRight && right) {
	Selected = (Selected + 1) % instance_number(Tower);
}

previousLeft = left;
previousRight = right;