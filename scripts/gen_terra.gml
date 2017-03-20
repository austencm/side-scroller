// gen_terra( params[ block_count ] )
// Generates earth-like terrain

// WIP NO FUNCTIONA

var PARAMS = argument[0],
    block_count = PARAMS[0];

var x_limit = terrain_extent_right + (block_count * BLOCK_SIZE);

for (var _x = terrain_extent_right; _x < x_limit; _x += BLOCK_SIZE) {
    // _y = 300 + 100 * PN_1D_interpolatedNoise(xx, 0, 1000, global.BLOCK_SIZE);
    // _y = PN_1D_perlinNoise(xx, 0, 0.5, 7);//1000, 10);

    //gen_block( array(_x, terrain_y_right) );
}


