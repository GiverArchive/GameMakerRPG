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
}

if(left && place_free(x - spd, y))
{
	x -= spd;
}

camera_set_view_pos(view_camera[0], x - view_wport[0] / 2, y - view_hport[0] / 2);