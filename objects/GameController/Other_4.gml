view_set_visible(0, true);
view_set_visible(1, false);


//Set background
    //Setup
        //Randomize seed
        randomize(); 
        //Get room size
        var roomHeight = round(room_height/16);
        var roomWidth = round(room_width/16);
        //Get tilemap id
        var layerId = layer_get_id("BackgroundTiles");
        var mapId = layer_tilemap_get_id(layerId);
    
    //Configure relative probability for each tile
        var tileChances = [0,400,20,3,2]; /*Change these numbers when adding new tiles*/
        
        var tileChanceContainer = [];
    
        for (var i = 0; i < array_length(tileChances); i++)
        {
            for (var j = 0; j < tileChances[i]; j++)
            array_push(tileChanceContainer, i);
        }
    
    //Generate background
    for (var width = 0; width < roomWidth; width++)
    {
        for (var height = 0; height < roomHeight; height++)
        {
            tilemap_set(mapId, tileChanceContainer[irandom(array_length(tileChanceContainer)-1)], width, height);
        }
    }

//Music
audio_play_sound(LQuaLeshkholit, 100, true)