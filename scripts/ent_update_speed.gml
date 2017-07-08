// ent_update_speed( )
// updates speeds and some flags

// Set horizontal speed
hsp = abs(hsp);                             // Remove movement direction

if (h_move_dir != 0) {                      // Am I even trying to move?
    if ( can_duck && ducking && is_above_solid() && !jumping)
        hsp = hsp_duck;                         // Move at crouch speed
    else if (can_accel)
        hsp = max(hsp + h_accel, hsp_base);     // Move with acceleration
    else
        hsp = hsp_base;                         // Move at base speed
}

hsp = min(hsp, hsp_max);                    // Cap horizontal speed
hsp *= h_move_dir;                          // Set movement direction

// Set vertical speed
vsp += grav;
vsp = clamp(vsp, -vsp_max, vsp_max); // Clamp vertical speed

// Turn off flags when we hit the ground
if ( is_above_solid() ) {
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
