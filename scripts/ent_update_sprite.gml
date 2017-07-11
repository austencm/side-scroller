// ent_update_sprite( )
// Sets sprite for any <obj_entity>

// Save the current bounding box bottom for comparison below
var last_bbox_bottom = sprite_get_bbox_bottom(sprite_index); 

if (h_move_dir != 0)
    image_xscale = h_move_dir; // Face sprite in direction of movement

if ( is_above_solid() ) {      // Am I on a solid?

    if (h_move_dir != 0) {     // Am I trying to move?
        if (can_duck && ducking) {    
            // Duck, Duck
            set_sprite_number_by_pair(spr_duck)
            sprite_current = 1
        }
        else {
            // Run or whatever
            set_sprite_number_by_pair(spr_move)
            sprite_current = 2
             
            // set run ani speed based on hsp
            running = sprites[sprite_current];
            running[1] = ani_speed_base + ( abs(hsp) - hsp_base ) * ani_speed_factor;
            sprites[sprite_current] = running;
        }
    }
    else {
        // Just Chillax, y0
        set_sprite_number_by_pair(spr_rest)
        sprite_current = 0
    }
}
else {// Am I in the air?
    
    if (can_jump && jumping && !flying) {     
        // Am I in the air following a jump?
        set_sprite_number_by_pair(spr_jump)
        sprite_current = 3
    }
    else if (can_fly && flying) {            
        // Am I flying after a jump?
        set_sprite_number_by_pair(spr_fly)
        sprite_current = 4
    }
    else {                                  
        // Otherwise I'm falling
        set_sprite_number_by_pair(spr_fall)
        sprite_current = 5
    }
}

set_sprite( sprites[sprite_current] );

// If the updated sprite has a lower bounding box, it can get us stuck in the ground
// TODO: test this more and maybe put it somewhere else  
var new_bbox_bottom = sprite_get_bbox_bottom(sprite_index);
if (new_bbox_bottom > last_bbox_bottom) {
   y += last_bbox_bottom - new_bbox_bottom; // Move up the difference
}
