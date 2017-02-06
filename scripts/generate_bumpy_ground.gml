 // function that generates random terrain to walk on.
/*
    argument0 = length of terrain (eg: 500000 px) wide
    argument1 = size to RNG down from previous wall generated (eg: 2 = 0-2 objects down)
    argument2 = size to RNG up from previous wall generated
    argument3 = how far down to fill in the floor (eg: 50 blocks down from block placement)
    argument4 = spacing to RNG repeat previous height block horizontally
*/

//Random_Seed
randomize();

//Set_Variables
pos = 0;
ypos = (room_height) / 2 + 20; //Choose height to start terrain
ypos_start = ypos; // Start position of ypos
//global.BLOCK_SIZE = 8; // Add horizontal spacing between points length
spacing = argument4; // repetative height placement upper limit
len = argument0; // Length of terrain

// get a random roll for spacing RNG
rand_roll = floor(random_range(0, spacing));

//Create_Terrain to the right
while (pos < room_width + len) {
    randomize();
    
    if (rand_roll < 1) {
        // choose random direction (up/down/neither) to gen next wall
        random_add = choose(-global.BLOCK_SIZE, 0, global.BLOCK_SIZE);
        ypos += random_add;
        
        // then increase it by a random factor up to arg1/2
        if (random_add > 0) ypos += floor(random_range(0, argument1)) * global.BLOCK_SIZE;
        else ypos -= floor(random_range(0, argument2)) * global.BLOCK_SIZE;
    
        rand_roll = floor(random_range(0, spacing));
    }
    else rand_roll--;
    
    pos += global.BLOCK_SIZE; //add horizontal length
     
    instance_create(pos, ypos, obj_block); //Create wall
    for (ypos2 = ypos + global.BLOCK_SIZE; ypos2 < ypos + argument3 * global.BLOCK_SIZE; ypos2 += global.BLOCK_SIZE)
        instance_create(pos, ypos2, obj_block);
}

//Reset ypos and pos
ypos = ypos_start;
pos = 0;

//Randomize again
randomize();
