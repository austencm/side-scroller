// sprite( spr_index, spr_speed )
// Returns <sprite_index> and <image_speed> packaged in an array for easy storage
// Access with sprite_get_index() and sprite_get_speed()

var spr_index, spr_speed;

spr_index = spr_square;
spr_speed = 0;

if (argument_count)
    spr_index = argument[0];
if (argument_count > 1)
    spr_speed = argument[1];

return array(spr_index, spr_speed);


