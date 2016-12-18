/// ProcGen();

/**************************************************************************************************

This is a basic script that handles each frame of the generation process. Generating all of the level
details in one frame would be pretty heavy, so I have broken it up over several frames.

1) General layout
2) For the next 2-6 frames we will build each room segment
3) Spawn grass or other details
4) Spread a second tile variation throughout our terrain
5) Retile and place vines

This process can change if a different order or structure makes sense to you. It can also be longer
if you want more variety and additions.

**************************************************************************************************/

if (keyFrame == 0) {
    // Get a general layout
    GetLayout();
} else if (keyFrame > 0 && keyFrame <= (worldWidth * worldHeight)) {
    // Build each zone
    BuildZone(GetZone(string_char_at(worldLayout, worldStrPosition)));
    ++worldStrPosition;
    
    if (string_char_at(worldLayout, worldStrPosition) == ' ') {
        xx = 0;
        yy += oGame.ZONE_HEIGHT * oGame.TILE_SIZE;
        
        ++worldStrPosition;
    } else {
        xx += oGame.ZONE_WIDTH * oGame.TILE_SIZE;
    }
} else if (keyFrame == (worldWidth * worldHeight) + 1) {
    // Tile the zones
    with (oBlock) {
        event_perform(ev_other, ev_user0);
    }
     
    // Reset and setup bg tiles
    xx = 0;
    yy = 0;
       
    for (var i = 1; i <= string_length(worldLayout); ++i) {
        if (string_char_at(worldLayout, i) != 'P') 
            AddBgTiles();    
           
        if (string_char_at(worldLayout, i + 1) == ' ') {
            xx = 0;
            yy += oGame.ZONE_HEIGHT * oGame.TILE_SIZE;
                
            ++i;
        } else {
            xx += oGame.ZONE_WIDTH * oGame.TILE_SIZE;
        }    
    }    
} else if (keyFrame == (worldWidth * worldHeight) + 2) {
    // Spawn grass
    with (oBlock) {
        if (image_index == 0 || image_index mod 2 == 0) {
            if (random(100) > 40)
                for (var i = 0; i < random_range(1, 3); ++i)
                    instance_create(x + 4 + random_range(-3, 3), y, choose(oFgGrass1, oFgGrass1, oFgGrass2));
            
            // Spawn enemy
            //if (random(100) > 90)
            //    instance_create(x + 4, y - 4, oCrawler);
        }            
    }
} else if (keyFrame == (worldWidth * worldHeight) + 3) {
    with (oBlock) {
        // Spread diff tile
        if (random(100) > 80) {
            if (tile)
                sprite_index = sTiles2
            else
                sprite_index = sTiles4;
            event_perform(ev_other, ev_user1);
        }
    }
} else if (keyFrame == (worldWidth * worldHeight) + 4) {
    // Tile the zones
    with (oBlock) {
        event_perform(ev_other, ev_user0);
        
        // Secondary tiles on different layer
        if (sprite_index == sTiles2 || sprite_index == sTiles4)
            depth = 1;
        
        // Vines    
        if (!place_meeting(x, y + 1, oParSolid)) {
            if (random(100) > 90)
                instance_create(x + 4, y + 4, oVineSpawner);
        }
    }
}
