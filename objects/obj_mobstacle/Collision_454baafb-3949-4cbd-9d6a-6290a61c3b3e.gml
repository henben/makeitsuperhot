if (global.control == true)//if we have control, then this is a real collision
{
    if (active == true)//if this object is active
    {
        //warp off screen   
        x = irandom_range(0, room_width);
        y = -50;
    }
}

