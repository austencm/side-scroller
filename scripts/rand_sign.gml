// rand_sign( num )
// Has a 50% chance to invert the sign of <num>


var num = argument[0];

if ( irandom(1) == 1 )
    num = num * -1;

return num;
