// ent_enable_duck( hsp_duck, spr_duck )
// Adds the ability to duck

can_duck = true;
ducking = false;
hsp_duck = 1;
spr_duck = sprite(spr_square);

if (argument_count)
    hsp_duck = argument[0];
if (argument_count > 1)
    spr_duck = argument[1];
