if (global.isRecording == true)//if we're recording
{
    //save our state into this object's local position array
    pArray[global.recordedStep, 0] = x;       
    pArray[global.recordedStep, 1] = y;
    pArray[global.recordedStep, 2] = image_angle;
}

if (global.control == true)//if we have control, i.e. We're moving ourselves
{
    y += spd;//fall from the top of the screen
    image_angle+=deg;//spin a little
}
else//otherwise, if we have no control, i.e. We're travelling back in time
{
    //as long as there's a previously saved step to go to (NOTE: Game Maker seems to crash sometimes if this is: if (global.recordedStep > 0)
    //works fine as below
    if (global.recordedStep > 1)
    {
        //set our variables as those in the local position array
        //REMEMBER the -1 after global.recordedStep!!!
        x = pArray[global.recordedStep-1, 0];
        y = pArray[global.recordedStep-1, 1];
        image_angle = pArray[global.recordedStep-1, 2];
    }
}

