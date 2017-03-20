// rand_sign( NUM )
// Has a 50% chance to invert the sign of NUM


var num = argument[0];

if ( irandom(1) == 1 )
    num = num * -1;

return num;
