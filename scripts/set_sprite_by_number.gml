// sprite_set_by_number( spr_num ) 
// Set an object's sprite index and speed from a number passed,
// corresponding to the entity's 'sprites' array

var spr_num = 0

if argument0 < array_length_1d(sprites)
    spr_num = argument0
    
var spr_array = sprites[spr_num]

sprite_index = spr_array[0];
image_speed = spr_array[1];
