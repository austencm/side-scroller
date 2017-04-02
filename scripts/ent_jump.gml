// ent_jump( )
// Adds vertical speed if jump conditions are met

if ( can_jump && is_above_solid() ) {
    vsp = -jump_speed;
    jumping = true;
}
