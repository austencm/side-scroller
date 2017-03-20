// gen_block( params[ x, y ] )
// Generates a single block of terrain at (<x>, <y>)

var PARAMS = argument[0],
    _x = PARAMS[0],
    _y = PARAMS[1];

create_tile(_x, _y);

// Advance the terrain extent
if (_x > terrain_extent_right)
    terrain_extent_right = _x;
