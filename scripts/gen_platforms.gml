// gen_platforms( room_x, chunk_x, min_length, max_length, gap_h, gap_v )

var room_x = argument[0],
    chunk_x = argument[1],
    min_length = argument[2],
    max_length = argument[3],
    gap_h = argument[4],
    gap_v = argument[5];
    
var delta_y = rand_sign(gap_h);

// yy = 300 + 100 * PN_1D_interpolatedNoise(xx, 0, 1000, global.BLOCK_SIZE);
// yy = PN_1D_perlinNoise(xx, 0, 0.5, 7);//1000, 10);

// var yy = 

create_tile(xx, yy);
