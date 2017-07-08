// stk_attach( obj, offset_x, offset_y, offset_angle, offset_depth )
//

var obj

obj = argument[0]
offset_x = argument[1]
offset_y = argument[2]
offset_angle = 0
offset_depth = 0

if (argument_count > 3)
    offset_angle = argument[3]
if (argument_count > 4)
    offset_depth = argument[4]

stuck_to = obj
grav = 0
depth = obj.depth + offset_depth
