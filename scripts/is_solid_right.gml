// is_solid_right( offset )
// Returns true if object is <offset> to the left of a solid

var offset = 1;
if (argument_count)
    offset = argument[0];

return !place_free(x + offset, y);
