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