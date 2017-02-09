draw_set_font(fnt_1);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(room_width/2, 600, string_hash_to_newline("Step: " + string(global.recordedStep)));//draw how hand steps we've recorded or have left

//If we're recording, then draw the rec box and everythinng involved to make it look fancy :D
if (global.isRecording == true)
{
    draw_sprite(spr_recBox, 0, room_width/2, room_height/2);
    draw_set_colour(c_yellow);
    draw_text(95, 20, string_hash_to_newline("FPS: " + string(fps)));
    draw_set_colour(c_white);
    
    if (showRec == true)
    {
        draw_sprite(spr_rec, 0, 140, 88);
    }
}
else
{
    draw_text(room_width/5*4, 40, string_hash_to_newline("Not recording!"));
}

if (global.control == false)
{
    draw_text(room_width/2, 18, string_hash_to_newline("Playback speed: " + string(global.stepMultiplyer) + "x"));//show the user how fast were stepping back at
}

draw_set_font(fnt_2);

if (global.isRecording == true)//more fanciness :D
{
    draw_text(100, room_height-50, string_hash_to_newline("Hold "));
    draw_text(320, room_height-50, string_hash_to_newline(" to rewind time"));
    draw_sprite(spr_key_return, 0, 178, room_height-50);
}

