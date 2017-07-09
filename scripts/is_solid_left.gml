// is_solid_left( offset )
// Returns true if object is <offset> to the right of a solid

var offset = 1;
if (argument_count)
    offset = argument[0];

return !place_free(x - offset, y);
