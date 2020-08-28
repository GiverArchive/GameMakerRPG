forward = keyboard_check(ord("W"));
left = keyboard_check(ord("A"));
back = keyboard_check(ord("S"));
right = keyboard_check(ord("D"));

if(forward && place_free(x, y - spd))
{
	y -= spd;
}

if(back && place_free(x, y + spd))
{
	y += spd;
}

if(right && place_free(x + spd, y))
{
	x += spd;
	image_index = 1;
}

if(left && place_free(x - spd, y))
{
	x -= spd;
	image_index = -1;
}

if(place_meeting(x, y, obj_enemy))
{
	if(random(100) < 30)
	{
		if(life > 0)
		{
			life--;
			audio_play_sound(sount_hurt, 1, false);
		}
		else
		{
			room_restart();
		}
	}
}

depth = -y;
camera_set_view_pos(view_camera[0], x - view_wport[0] / 2, y - view_hport[0] / 2);