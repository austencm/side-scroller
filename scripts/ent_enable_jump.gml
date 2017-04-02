// ent_enable_jump( jump_speed, spr_jump )
// Adds the ability to jump

can_jump = true;
jumping = false;
jump_speed = BASE_GRAV * 20;
spr_jump = sprite(spr_square);

if (argument_count)
    jump_speed = argument[0];
if (argument_count > 1)
    spr_jump = argument[1];
