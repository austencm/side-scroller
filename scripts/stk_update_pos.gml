// stk_update_pos( )
// Match the position and angle of currently stuck object

if (stuck_to)
    stick_to(stuck_to, offset_x, offset_y, offset_angle);
else 
    event_inherited();
