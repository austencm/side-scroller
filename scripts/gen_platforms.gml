// gen_platforms( params[ block_count, min_length, max_length, gap_h, gap_v ] )
// Generates platforms of varied length with varied space in between


var PARAMS = argument[0],
    block_count = PARAMS[0], // Width of chunk in blocks
    min_length = PARAMS[1], // Min length of a platform
    max_length = PARAMS[2], // Max length of a platform
    gap_h = PARAMS[3], // Median horizontal gap between platforms (in blocks)
    gap_v = PARAMS[4]; // Median vertical gap between platforms (in blocks)

var x_limit = terrain_extent_right + (block_count * BLOCK_SIZE),
    platform_length;

while (terrain_extent_right < x_limit) {
    // Add gap
    terrain_extent_right += irandom_range(gap_h - 3, gap_h + 3) * BLOCK_SIZE;
    terrain_y_right += rand_sign( irandom_range(gap_v - 2, gap_v + 2) ) * BLOCK_SIZE;
    
    // Figure out platform length
    platform_length = irandom_range(min_length, max_length);
    // platform_length = min( platform_length, (x_limit - terrain_extent_right) / BLOCK_SIZE ); // Make sure we don't exceed the chunk width
    
    // Generate the platform
    gen_flat( array(platform_length) );
}
