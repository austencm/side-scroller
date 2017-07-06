// ent_enable_fly( spr_fly )
// Adds the ability to fly (means unlimited jumps)

can_fly = true;
flying = false;
spr_fly = sprite(spr_square);

if (argument_count)
    spr_fly = argument0;
