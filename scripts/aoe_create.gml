/// aoe_create( x, y, radius, immune_objs )

var obj = instance_create( argument[0], argument[1], obj_aoe )

with obj {
    radius = argument[2]
    immune_objs = false
    if argument_count > 3
        immune_objs = argument[3]
}

return obj
