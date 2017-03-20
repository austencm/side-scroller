// gen_flat( params[ block_count ] )
// Generates <block_count> blocks in a horizontal line at the current <terrain_y_right>

var PARAMS = argument[0],
    block_count = PARAMS[0];

var x_limit = terrain_extent_right + (block_count * BLOCK_SIZE);

for (var _x = terrain_extent_right; _x < x_limit; _x += BLOCK_SIZE) {
    gen_block( array(_x, terrain_y_right) );
}
