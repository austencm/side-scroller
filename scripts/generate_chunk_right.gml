// generate_chunk_right( generator, params[ ] )
// Calls the <generator> function with <params>


var generator = argument[0],
    params = argument[1];

script_execute(generator, params);

// Add some space between chunks for debugging
// terrain_extent_right += BLOCK_SIZE * 4; // DEBUG
