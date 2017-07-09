/// ease(function, x)

var function,xx,xx2,xxm1;
function=argument0
xx=argument1
xx2=xx*2
xxm1=xx-1

if (xx<=0)
return 0
if (xx>=1)
return 1

switch (function) {

case "linear":
return xx

case "instant":
return 0

case "easeInQuad":
return xx*xx

case "easeOutQuad":
return -xx*(xx-2)

case "easeInOutQuad":
if (xx2<1)
    return 1/2*xx2*xx2
return -1/2*((xx2-1)*(xx2-3)-1)

case "easeInCubic":
return xx*xx*xx

case "easeOutCubic":
return ((xxm1)*xxm1*xxm1+1)

case "easeInOutCubic":
if (xx2<1)
    return 1/2*xx2*xx2*xx2
return 1/2*((xx2-2)*(xx2-2)*(xx2-2)+2)

case "easeInQuart":
return xx*xx*xx*xx

case "easeOutQuart":
return -((xxm1)*xxm1*xxm1*xxm1-1)

case "easeInOutQuart":
if (xx2<1)
    return 1/2*xx2*xx2*xx2*xx2
return -1/2*((xx2-2)*(xx2-2)*(xx2-2)*(xx2-2)-2)

case "easeInQuint":
return xx*xx*xx*xx*xx

case "easeOutQuint":
return ((xxm1)*xxm1*xxm1*xxm1*xxm1+1)

case "easeInOutQuint":
if (xx2<1)
    return 1/2*xx2*xx2*xx2*xx2*xx2
return 1/2*((xx2-2)*(xx2-2)*(xx2-2)*(xx2-2)*(xx2-2)+2)

case "easeInSine":
return -cos(xx*(pi/2))+1

case "easeOutSine":
return sin(xx*(pi/2))

case "easeInOutSine":
return -1/2*(cos(pi*xx/1)-1)

case "easeInExpo":
return power(2,10*(xx-1))

case "easeOutExpo":
return -power(2,-10*xx)+1

case "easeInOutExpo":
if (xx2<1)
    return 1/2*power(2,10*(xx2-1))
return 1/2*(-power(2,-10*(xx2-1))+2)

case "easeInCirc":
return -(sqrt(1-xx*xx)-1)

case "easeOutCirc":
return sqrt(1-(xxm1)*xxm1)

case "easeInOutCirc":
if (xx2<1)
    return -1/2*(sqrt(1-xx2*xx2)-1)
return 1/2*(sqrt(max(0,1-(xx2-2)*(xx2-2)))+1)

case "easeInElastic":
var p=0.3;
var s=p/(2*pi)*arcsin(1);
return -(power(2,10*(xx-1))*sin(((xx-1)*1-s)*(2*pi)/p))

case "easeOutElastic":
var p=0.3;
var s=p/(2*pi)*arcsin(1);
return power(2,-10*xx)*sin((xx*1-s)*(2*pi)/p)+1

case "easeInOutElastic":
var p=0.3*1.5;
var s = p/(2*pi)*arcsin(1);
if (xx2<1)
    return -0.5*(power(2,10*(xx2-1))*sin(((xx2-1)*1-s)*(2*pi)/p))
return power(2,-10*(xx2-1))*sin(((xx2-1)*1-s)*(2*pi)/p)*0.5+1

case "easeInBack":
var s=1.70158;
return xx*xx*((s+1)*xx-s)

case "easeOutBack":
var s=1.70158;
return (xxm1*xxm1*((s+1)*xxm1+s)+1)

case "easeInOutBack":
var s=1.70158; 
if (xx2<1)
    return 1/2*(xx2*xx2*(((s*(1.525))+1)*xx2-(s*(1.525))))
return 1/2*((xx2-2)*(xx2-2)*(((s*(1.525))+1)*(xx2-2)+(s*(1.525)))+2)

case "easeInBounce":
xx=1-xx
if (xx<(1/2.75))
    return 1-(7.5625*xx*xx)
else if (xx<(2/2.75))
    return 1-(7.5625*(xx-(1.5/2.75))*(xx-(1.5/2.75))+0.75)
else if (xx<(2.5/2.75))
    return 1-(7.5625*(xx-(2.25/2.75))*(xx-(2.25/2.75))+0.9375)
else
    return 1-(7.5625*(xx-(2.625/2.75))*(xx-(2.625/2.75))+0.984375)

case "easeOutBounce":
if (xx<(1/2.75))
    return (7.5625*xx*xx)
else if (xx<(2/2.75))
    return (7.5625*(xx-(1.5/2.75))*(xx-(1.5/2.75))+0.75)
else if (xx<(2.5/2.75))
    return (7.5625*(xx-(2.25/2.75))*(xx-(2.25/2.75))+0.9375)
else
    return (7.5625*(xx-(2.625/2.75))*(xx-(2.625/2.75))+0.984375)

case "easeInOutBounce":
var ret;
if (xx<1/2) {
    xx*=2
    xx=1-xx
    if (xx<(1/2.75))
        ret=(7.5625*xx*xx)
    else if (xx < (2/2.75))
        ret=(7.5625*(xx-(1.5/2.75))*(xx-(1.5/2.75))+0.75)
    else if (xx < (2.5/2.75))
        ret=(7.5625*(xx-(2.25/2.75))*(xx-(2.25/2.75))+0.9375)
    else
        ret=(7.5625*(xx-(2.625/2.75))*(xx-(2.625/2.75))+0.984375)
    ret=1-ret
    ret*=.5
} else {
    xx=xx*2-1
    if (xx<(1/2.75))
        ret=(7.5625*xx*xx)
    else if (xx < (2/2.75))
        ret=(7.5625*(xx-(1.5/2.75))*(xx-(1.5/2.75))+0.75)
    else if (xx < (2.5/2.75))
        ret=(7.5625*(xx-(2.25/2.75))*(xx-(2.25/2.75))+0.9375)
    else
        ret=(7.5625*(xx-(2.625/2.75))*(xx-(2.625/2.75))+0.984375)
    ret*=0.5 
    ret+=0.5
}
return ret
}

return xx
