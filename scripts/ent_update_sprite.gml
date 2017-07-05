// ent_update_sprite( )
// Sets sprite for any <obj_entity>

// Save the current bounding box bottom for comparison below
var last_bbox_bottom = sprite_get_bbox_bottom(sprite_index); 

if (h_move_dir != 0)
    image_xscale = h_move_dir; // Face sprite in direction of movement

if ( is_above_solid() ) {      // Am I on a solid?

    if (h_move_dir != 0) {     // Am I trying to move?
        if (can_duck && ducking) {
            set_sprite(spr_duck);    // Duck, Duck
        }
        else {
            set_sprite(spr_move);
        }
    }
    else {
        set_sprite(spr_rest);
    }
}
else if (can_jump && jumping)  // Am I in the air following a jump?
    set_sprite(spr_jump);
else                           // Otherwise I'm falling
    set_sprite(spr_air);

// If the updated sprite has a lower bounding box, it can get us stuck in the ground
// TODO: test this more and maybe put it somewhere else  
var new_bbox_bottom = sprite_get_bbox_bottom(sprite_index);
if (new_bbox_bottom > last_bbox_bottom) {
   y += last_bbox_bottom - new_bbox_bottom; // Move up the difference
}
