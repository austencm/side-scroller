// stk_attach( obj, offset_x, offset_y, offset_angle )
//

var obj;

obj = argument[0];
offset_x = argument[1];
offset_y = argument[2];
offset_angle = 0;

if (argument_count > 3)
    offset_angle = argument[3];

stuck_to = obj;
grav = 0;

