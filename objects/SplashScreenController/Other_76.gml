if (event_data[? "event_type"] == "sequence event")
{
    switch (event_data[? "message"])
    {
        case "nextRoom":
            //game_end();
            room_goto_next();
            break;
        default:
            break;
    }
}