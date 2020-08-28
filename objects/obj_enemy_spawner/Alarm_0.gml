if(instance_number(obj_enemy) < 10)
{
	instance_create_depth(irandom_range(32, room_width -32), irandom_range(32, room_height - 32), -1, obj_enemy);
}

alarm[0] = irandom_range(60, 600);