// ent_accel( )
// Increases <hsp>


if (can_accel && h_move_dir) {
    hsp += h_move_dir * h_accel;
    hsp = max( abs(hsp), hsp_base ) * h_move_dir; // Keep <hsp> above <hsp_base>

}


