// rand_range( min , max )
// Generates a random integer between <min> and <max>, inclusive


var _min = argument[0],
    _max = argument[1];

return _min + irandom( _max - _min );
