//Listen for messages broadcasted from sequences

if (event_data[? "event_type"] == "sequence event")
{
    switch (event_data[? "message"])
    {
        case "nextRoom":
			//LoadingAnimationController.visible = true;
            room_goto_next();
            break;
    }
}