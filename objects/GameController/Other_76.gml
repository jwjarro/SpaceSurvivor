//Listen for messages broadcasted from sequences

if (event_data[? "event_type"] == "sequence event")
{
    switch (event_data[? "message"])
    {
        //Cases for each type of message
        case "nextWave":
            incrementWave();
            break;
    }
}