// arg0: start x
// arg1: generate left (optional)

// show_message('generating chunk');

var start_x = argument[0];
var gen_dir = 1;

if (argument_count > 1 && argument[1] == true)
    gen_dir = -1;

for (var xx = global.BLOCK_SIZE; xx < global.CHUNK_WIDTH; xx += global.BLOCK_SIZE) {
    instance_create(start_x + (xx * gen_dir), room_height / 2, obj_block);
}

return start_x + (xx * gen_dir);
