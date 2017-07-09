// ent_update_state( )
// Sets flags

// Turn off flags when we hit the ground
if ( is_above_solid() && vsp == 0 ) {
    falling = false;
    
    // Turn off the jump flag when we hit the ground
    if ( can_jump ) {
        jumping = false;
        jumps = 0;
    }
    // Turn off the fly flag when we hit the ground
    if ( can_fly )
        flying = false;   
}
