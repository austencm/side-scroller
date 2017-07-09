// ent_attack( )
// 

if !can_attack
    return false
    
attacking = true

if h_move_dir != 0 {
    hsp += att_speed * h_move_dir
}
else if input_up {
    vsp = -att_speed
}
else if input_down_start {
    vsp += att_speed
}

// TODO: create aoe_dmg instance in h_move_dir
// ...or up/down if just one of those directions is held
