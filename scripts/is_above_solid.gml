// is_above_solid( offset )
// Returns true if object is <offset> or less above a solid

var offset = 1;
if (argument_count)
    offset = argument[0];

return !place_free(x, y + offset);
