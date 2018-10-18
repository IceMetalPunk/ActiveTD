Keyboard = ds_map_create();
ds_map_add(Keyboard, "Swap Left", vk_left);
ds_map_add(Keyboard, "Swap Right", vk_right);
ds_map_add(Keyboard, "Rotate Left", ord("A"));
ds_map_add(Keyboard, "Rotate Right", ord("D"));
ds_map_add(Keyboard, "Fire Normal", vk_control);
ds_map_add(Keyboard, "Fire Special", vk_space);

KeyboardMouse = ds_map_create();
ds_map_add(KeyboardMouse, "Swap Left", vk_left);
ds_map_add(KeyboardMouse, "Swap Right", vk_right);
ds_map_add(KeyboardMouse, "Fire Normal", mb_left);
ds_map_add(KeyboardMouse, "Fire Special", mb_right);

Gamepad = ds_map_create();
ds_map_add(Gamepad, "Swap Left", gp_shoulderlb);
ds_map_add(Gamepad, "Swap Right", gp_shoulderrb);
ds_map_add(Gamepad, "Fire Normal", gp_face1);
ds_map_add(Gamepad, "Fire Special", gp_face2);
ds_map_add(Gamepad, "Aim Stick", gp_axislh);

Values = ds_map_create();
ds_map_add(Values, "Left", false);
ds_map_add(Values, "Right", false);
ds_map_add(Values, "RotLeft", false);
ds_map_add(Values, "RotRight", false);
ds_map_add(Values, "Normal", false);
ds_map_add(Values, "Special", false);
ds_map_add(Values, "Aim X", 0);
ds_map_add(Values, "Aim Y", 0);

Mapping = "Keyboard";