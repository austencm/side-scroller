// ent_jump( )
// Adds vertical speed if jump/fly conditions are met

if ( can_jump ) {
    if ( is_above_solid() || jumps < jumps_max ) {
        vsp = -jump_speed;
        jumping = true;
        jumps++;
    }
    else if ( can_fly ) {
        vsp = -jump_speed;
        flying = true;
    }
}
