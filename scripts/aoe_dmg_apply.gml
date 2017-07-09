// aoe_dmg_apply( dmg )

for (var i = 0; i < ds_list_size(collisions); i++) {
    var ent = collisions[| i]
    with ent {
        health -= dmg
    }
}
