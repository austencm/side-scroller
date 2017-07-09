// aoe_dmg_create( x, y, radius, dmg, immune_objs )

var obj = aoe_create( argument[0], argument[1], argument[2] )

with obj {
    dmg = argument[3]
    if argument_count > 4
        immune_objs = argument[4]
}

return obj
