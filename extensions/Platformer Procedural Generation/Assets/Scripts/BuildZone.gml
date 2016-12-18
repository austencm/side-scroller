/// BuildZone();

var xpos   = xx; 
var ypos   = yy;
var strpos = 1;

for (var j = 0; j < oGame.ZONE_HEIGHT; ++j) {
    for (var i = 0; i < oGame.ZONE_WIDTH; ++i) {
        // '1' -> oBlock
        if (string_char_at(argument0, strpos) == '1') {
            instance_create(xpos, ypos, oBlock);
        } else if (string_char_at(argument0, strpos) == '2') {
            instance_create(xpos, ypos - 8, oLanternSpawner);
        }
        
        // Move one tile to the right    
        xpos += oGame.TILE_SIZE;
        
        // Move along the string
        ++strpos;
    }
    
    // Wrap around to the next tile row
    if (string_char_at(argument0, strpos) == ' ') {
        xpos = xx;
        ypos += oGame.TILE_SIZE;
        
        ++strpos;
    }
}
