// Create controller objects

// Set all room backgrounds
rooms[0] = demo_movement
rooms[1] = demo_terrain

bg_col = $252025    // dark purple hex value
bg_image = bg_purple_stones
parallax_x = 5
parallax_y = 5

for (i = 0; i < array_length_1d(rooms); i++) {

    room_set_background_color(rooms[i], bg_col, true)
    room_set_background(rooms[i], 0, true, false, bg_image, 
        parallax_x, parallax_y, true, true, 0, 0, 1);
}
room_goto_next()

instance_create(0, 0, Debug)
instance_create(0, 0, Rendering)
instance_create(0, 0, Camera)
