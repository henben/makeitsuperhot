global.recordedStep = 0;//start recording at step 0
global.stepMultiplyer = 1;//default multiplyer
global.control = true;//we start with control of our destiny
global.isRecording = true;//we're recording on startup

//Create the player, spacetime controller and hud
instance_create(room_width/2, room_height/2, obj_player);
instance_create(10, 10, obj_spacetimeController);
instance_create(1064, 40, obj_hud);

//The add some mobstacles :P
for(i=0; i<10; i++)
{
    instance_create(irandom_range(0, room_width), irandom_range(0, room_height), obj_mobstacle);
}