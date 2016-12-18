/// AddBgTiles();

var xpos   = xx; 
var ypos   = yy;

for (var j = 0; j < 3; ++j) {
    for (var i = 0; i < 5; ++i) {
        if (oGame.tile)
            tile_add(bgTile, 0, 0, 32, 32, xpos + (i * 32), ypos + (j * 32), 100);  
        else
            tile_add(bgTile2, 0, 0, 32, 32, xpos + (i * 32), ypos + (j * 32), 100);
    }
}