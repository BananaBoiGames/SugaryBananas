if (room != hub_room1 && room != rank_room && room != palroom)
{
    global.playseconds += 1
    if (obj_pause.pause == 0)
    {
        if (global.playseconds > 59)
        {
            global.playminutes += 1
            global.playseconds -= 59
        }
    }
}
alarm[3] = 60
