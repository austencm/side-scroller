// ent_handle_solid_collisions( )
// Handles horizontal & vertical collisions between entities and solid things

// Horizontal collisions
if ( !place_free(x + hsp, y) ) {
    // Move to touch the obstacle
    while( place_free(x + sign(hsp), y) ) { 
        x += sign(hsp);
    }
    hsp = 0;
}

// Vertical collisions
if ( is_above_solid(vsp) ) {
    // Move to touch the obstacle
    while( place_free( x, y + sign(vsp) ) ) { 
        y += sign(vsp);
    }
    vsp = 0;
}
