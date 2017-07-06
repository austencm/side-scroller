// ent_update_speed( )
//

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

// Turn off jump flag when we hit the ground
if ( can_jump && is_above_solid() ) {
    jumping = false;
    falling = false;
}
if (vsp > 0)
    falling = true;

// Turn off the flying flag when we hit the ground
if ( can_fly && is_above_solid() )
    flying = false;
