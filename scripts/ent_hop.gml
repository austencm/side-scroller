// ent_hop( )
// forces jump to end prematurely by applying downwards vsp

if (can_hop && vsp < 0) {
    vsp += jump_speed * hop_factor;
    hopping = true;
}
