///PN_1D_smoothedNoise(x, seed, wavelength, scale)

argument0 = (argument0/argument2)*argument3;
return PN_1D_noise(argument0, argument1)/2 + PN_1D_noise(argument0 - 1,argument1)/4 + PN_1D_noise(argument0+1,argument1)/4;
