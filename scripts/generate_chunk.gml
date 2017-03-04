// generate_chunk( start_x [num], generator [string], dir [bool] )
 
// start_x: x position where first tile will be generated
// dir (optional): direction to generate. true = right, false = left

// returns: the x position of the end of the new chunk

var start_x = argument[0],
    generator = argument[1],
    dir = 1,
    new_x = false;

if ( argument_count > 2 && !!argument[2] == true )
    dir = -1;

for (var xx = 0; xx < global.CHUNK_WIDTH; xx += global.BLOCK_SIZE) {
    new_x = script_execute( generator, start_x + (xx * dir), xx );
    ///if ( new_x && is_real(new_x) )
        //xx = new_x;
}

return start_x + (xx * dir);
