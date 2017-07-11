// ent_update_speed( )
// Updates hsp & vsp

// Set horizontal speed
hsp = abs(hsp)                              // Remove movement direction

if h_move_dir != 0 {                      // Am I even trying to move?
    if ( can_duck && ducking && is_above_solid() && !jumping)
        hsp = hsp_duck                         // Move at crouch speed
    else {  // we are in the air, houston
        if can_accel {
            if is_above_solid()     // Move with acceleration
                hsp = max(hsp + h_accel, hsp_base)
            else if hsp == 0        // move with no accel in air after jump
                hsp = hsp_base;
            else
                hsp = hsp;
        }
        else
            hsp = hsp_base                         // Move at base speed
    }
}

if (hsp > hsp_max)
    hsp = max(hsp - BASE_DRAG, hsp_max)        // Apply drag if we're above max speed
//hsp = min(hsp, hsp_max)                    
hsp *= h_move_dir                              // Set movement direction

// Set vertical speed
vsp += grav
vsp = clamp(vsp, -vsp_max, vsp_max) // Clamp vertical speed

// Wall sliding
if /*v_move_dir == -1 &&*/                         // Are we holding up?
    ( ( is_solid_left() && h_move_dir == -1 ) ||    // and moving into a wall?
    ( is_solid_right() && h_move_dir == 1 ) ) {
    vsp = min(vsp, 10)                               // Cap fall speed
}
