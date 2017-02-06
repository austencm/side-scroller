///PN_1D_perlinNoise(x, seed, persistence, octaves, wavelength, scale)

var total = 0;
var persistence = argument2;
var Number_Of_Octaves = argument3 - 1;
argument0 = (argument0/argument4)*argument5;
for(var i =  0; i<=Number_Of_Octaves;i++)
{
    var frequency = power(2,i);
    var amplitude = power(persistence,i);
    
    total += PN_1D_interpolatedNoise( argument0 * frequency, argument1, 1, 1) * amplitude;
}

return total;
