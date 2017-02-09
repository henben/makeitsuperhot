/***************************************************
  Space Time Controller - Created by SlasherX
  as seen on YouTube.
  This controller handles whether step recording 
  should be done, at what speed we go back in time
  and whether the player is going back in time.
 ***************************************************/

if (global.isRecording == true)//if we're recording (which is default)
{
    global.recordedStep++;//increase the global record step
}

if (global.control == true)//if we have control
{
    global.stepMultiplyer = 1;//then we will always be at a step multiplyer of 1
}
else//otherwise if we have no control, i.e. we're stepping back in time
{
    if (global.recordedStep > 0)//if there are still recorded steps available
    {
        if ((global.recordedStep - global.stepMultiplyer) > 0)//check that we can decrease by the stipulated multiple
        {
            global.recordedStep -= global.stepMultiplyer;//derease by multiplyer
        }
        else//otherwise just set to zero
        {
            global.recordedStep = 0;//there are now no more recorded steps left
        }
    }
    else
    {
        global.control = true;//no more recorded steps means we now have control again
    }
}

if (keyboard_check(vk_enter))//if the return key is held down
{
    if (global.recordedStep > 0)//as long as there are recorded steps to go to
    {
        global.isRecording = false;//we're not recording
        global.control = false;//we have no control
        held = true;//this button is being pressed
    }
}
else//otherwise when this key is not held
{
    global.isRecording = true;//we're recording steps
    
    if (held == true)//if it was held before
    {
        global.control = true;//the opportunity was squandered and we now have control
        global.recordedStep = 0;//restart the recorded step count
        held = false;//this key is not being held
    }
}

//increase the step multiplyer
if (keyboard_check_pressed(ord("A")))
{
    if (global.control == false)
    {
        if (global.stepMultiplyer < 5)
        {
            global.stepMultiplyer++;
        }
    }
}

//decrease the step multiplyer
if (keyboard_check_pressed(ord("Z")))
{
    if (global.control == false)
    {
        if (global.stepMultiplyer > 1)
        {
            global.stepMultiplyer--;
        }
    }
}

/* */
/*  */
