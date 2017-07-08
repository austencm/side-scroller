/// stick_to(obj, offset_x, offset_y, offset_angle)

var obj, offset_x, offset_y, offset_angle;

obj = argument[0];
offset_x = argument[1];
offset_y = argument[2];
offset_angle = 0;

if (argument_count > 3)
    offset_angle = argument[3];

if (offset_angle != 0) {
    var dis = point_distance(obj.x, obj.y, obj.x + offset_x, obj.y + offset_y);
    var dir = point_direction(obj.x, obj.y, obj.x + offset_x, obj.y + offset_y);
    x = obj.x + lengthdir_x(dis, dir + obj.image_angle);
    y = obj.y + lengthdir_y(dis, dir + obj.image_angle);
    image_angle = obj.image_angle + offset_angle;
}
else {
    x = obj.x + offset_x;
    y = obj.y + offset_y;
}

image_xscale = obj.image_xscale;
