// ent_jump( )
// Adds vertical speed if jump/fly conditions are met

if ( can_jump ) {
    var wall_jumping = ( is_solid_left(BLOCK_SIZE) && h_move_dir == 1 ) ||
                       ( is_solid_right(BLOCK_SIZE) && h_move_dir == -1 ) 
    var above_solid = is_above_solid()
     
    if (wall_jumping) {
        vsp = -jump_speed
        jumping = true
    }
    else if (above_solid || jumps < jumps_max) {
        vsp = -jump_speed
        jumping = true
        jumps++
    }
    else if ( can_fly ) {
        vsp = -jump_speed
        flying = true
    }
}
