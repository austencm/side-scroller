///Create Random Terrain
/*

    - argument0 = Lowest point (room_height + argument0)
    - argument1 = Maximum height with wich the terrain can lift
    - argument2 = Space between two points
    - argument3 = Lenght of terrain (to the left and to the right)

*/
//Random_Seed
randomize();

//Set_Variables
globalvar bottom;
bottom = room_height+argument0 //Lowest possible point
pos = 0;
xx = 0;
yy = 0;
ypos = (irandom(room_height)/2) + (irandom(room_height)/2); //Choose random height to start terrain
ypos_start = ypos; //Start position of ypos
height = argument1; //Maximum height with wich the terrain can lift
length = argument2; //Add horizontal lenght
len = argument3; //Lenght of terrain (20000 pixels to the left and 20000 pixels to the right)

//Create_Terrain to the right
while pos < room_width+len
{   
    //xx and yy are used to draw the floor (see object: Floor)                        
    xx = pos;
    yy = ypos;
    
    randomize();
    ypos = ypos+((irandom(height))*choose(-1,1)); //Choose random height to make terrain
    
    pos += length; //add horizontal lenght
    
    if ypos > bottom-20 //If ypos is lower then bottom, set ypos to be higher then bottom 
    {
        ypos -= 20;
    }
     
    instance_create(pos,ypos,Floor); //Create floor
}

//Reset ypos and pos
ypos = ypos_start;
pos = 0;

//Randomize again
randomize();

//Create_Terrain to the left
while pos > -len
{   
    //xx and yy are used to draw the floor (see object: Floor)                        
    xx = pos;
    yy = ypos;
    
    randomize();
    ypos = ypos+((irandom(height))*choose(-1,1)); //Choose random height to make terrain
    
    pos -= length ;//reduce horizontal lenght
    
    if ypos > bottom-20 //If ypos is lower then bottom, set ypos to be higher then bottom
    {
        ypos -= 20;
    }
    
    instance_create(pos,ypos,Floor); //Create floor
}
