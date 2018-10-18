layout_names = [];
layout_count = 0;
current_layout_index = 0;
current_screen = KeyMapper.Mapping;

var currentKey = ds_map_find_first(KeyMapper.Layouts);
while (!is_undefined(currentKey)) {
	layout_names[layout_count++] = currentKey;
	if (currentKey == current_screen) {
		current_layout_index = layout_count - 1;	
	}
	currentKey = ds_map_find_next(KeyMapper.Layouts, currentKey);
}

can_scroll = true;

event_user(0);