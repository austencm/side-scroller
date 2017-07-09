// ent_update_speed( )
// Updates hsp & vsp

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
vsp += grav
vsp = clamp(vsp, -vsp_max, vsp_max) // Clamp vertical speed
// Wall sliding
if ( // Are we moving into a wall?
    ( is_solid_left() && h_move_dir == -1 ) ||
    ( is_solid_right() && h_move_dir == 1 ) 
) {
    vsp = min(vsp, 2) // Cap fall speed
}
