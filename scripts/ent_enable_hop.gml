// ent_enable_hop( hop_factor )
// Adds the ability to short-hop based on length of jump button held down

can_hop = true;
hop_factor = 1;

if (argument_count)
    hop_factor = argument[0];
