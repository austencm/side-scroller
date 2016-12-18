/// GetLayout();

/******************************************************************************
Create a string that is to be treated as the generalized layout of the room. 
The room is broken up into zones.
Each zone is a ZONE_WIDTH * ZONE_HEIGHT clump of 'oBlock' objects that connect together to form a complete room.
Each letter represents a different zone shape.

For example, 'case 1' is a layout that is 1 zone wide and 2 zones tall.
D represents a zone that can only exited below.
B represents a zone that can only be exited above.
The space represents started a new row of zones. 

So 'case 1' will give you a zone that is structured somewhat like this:
*****
*   *
*   *

*   *
*   *
*****

I added an extra line break to show separation.
The top half is a D-zone, the bottom half is a B-zone.

NOTE: This portion of the generation method could EASILY be generated in itself. 
This approach is somewhat tedious if you need layouts that are LARGER (say 4x4 or larger).
The amount of layouts grow exponentially and you would want to generate things automatically.
******************************************************************************/

switch (ceil(random(55))) {
    // 1 x 2
    case 1:
        worldLayout = "D B";
        
        worldWidth  = 1;
        worldHeight = 2;
    break;
    
    // 1 x 3
    case 2:
        worldLayout = "D F B";
        
        worldWidth  = 1;
        worldHeight = 3;
    break;
    
    // 2 x 1
    case 3:
        worldLayout = "AC";
        
        worldWidth  = 2;
        worldHeight = 1;
    break;
    
    // 2 x 2
    case 4:
        worldLayout = "GJ HI";
        
        worldWidth  = 2;
        worldHeight = 2;        
    break;
    
    case 5:
        worldLayout = "GC BP";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 6:
        worldLayout = "PD AI";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 7:
        worldLayout = "AJ PB";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 8:
        worldLayout = "DP HC";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 9:
        worldLayout = "DD HI";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 10:
        worldLayout = "AJ AI";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 11:
        worldLayout = "GC HC";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    case 12:
        worldLayout = "GJ BB";
        
        worldWidth  = 2;
        worldHeight = 2;   
    break;
    
    // 2 x 3
    case 13:
        worldLayout = "AJ PF AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 14:
        worldLayout = "AJ AL PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 15:
        worldLayout = "AJ AL AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
 
    case 16:
        worldLayout = "PD AL AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 17:
        worldLayout = "PD AL PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 18:
        worldLayout = "GJ FF HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 19:
        worldLayout = "GC FP HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 20:
        worldLayout = "GC NC BP";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 21:
        worldLayout = "GC NC HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 22:
        worldLayout = "DP NC HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 23:
        worldLayout = "GC HJ PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 24:
        worldLayout = "GC HJ AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
     case 25:
        worldLayout = "AJ GI BP";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
     case 26:
        worldLayout = "GJ NI BP";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 27:
        worldLayout = "GJ HL PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 28:
        worldLayout = "GJ NL BB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 29:
        worldLayout = "GJ NL HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
 
    case 30:
        worldLayout = "GJ HL AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 31:
        worldLayout = "GJ NI HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 32:
        worldLayout = "DP NJ HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 33:
        worldLayout = "PD GL HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 34:
        worldLayout = "DD NL HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 35:
        worldLayout = "AJ GL HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 36:
        worldLayout = "GC NJ HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 37:
        worldLayout = "DP NJ BB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 38:
        worldLayout = "DD NL BB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 39:
        worldLayout = "PD GI HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 40:
        worldLayout = "DD HL PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 41:
        worldLayout = "PD GL BB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 42:
        worldLayout = "AJ PF PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 43:
        worldLayout = "GC FP BP";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 44:
        worldLayout = "PD PF AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 45:
        worldLayout = "DP HJ AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 46:
        worldLayout = "DP FP HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 47:
        worldLayout = "DP FD HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 48:
        worldLayout = "PD DF HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 49:
        worldLayout = "GJ FB BP";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 50:
        worldLayout = "GJ BF PB";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 51:
        worldLayout = "AJ DF HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 52:
        worldLayout = "GJ BF AI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 53:
        worldLayout = "GC FD HI";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
    
    case 54:
        worldLayout = "GJ FB HC";
        
        worldWidth  = 2;
        worldHeight = 3;   
    break;
        
    // 3 x 1
    case 55:
        worldLayout = "AEC";
        
        worldWidth  = 3;
        worldHeight = 1;        
    break;
    
    // 3 x 2
}