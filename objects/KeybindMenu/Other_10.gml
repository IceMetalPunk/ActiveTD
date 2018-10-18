/// @description Generate layout button menu
current_layout = KeyMapper.Layouts[? current_screen];
button_index_map = [];

instance_destroy(Button);

var key_name_map = ds_list_create(), currentKey = ds_map_find_first(current_layout);
while (!is_undefined(currentKey)) {
	ds_list_add(key_name_map, currentKey);
	currentKey = ds_map_find_next(current_layout, currentKey);
}
ds_list_sort(key_name_map, true);

var yy = 128;
for (var index = 0; index < ds_list_size(key_name_map); ++index) {
	with (instance_create_layer(room_width/2, yy, "Buttons", Button)) {
			buttonId = index;
			text = key_name_map[| index];
			execution = btn_map_key;
	}
	button_index_map[index] = key_name_map[| index];
	yy += string_height(key_name_map[| index]) + 20;	
}
ds_list_destroy(key_name_map);