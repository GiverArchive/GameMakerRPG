instance_destroy();
audio_play_sound(sound_hit, 1, false);

with(other)
{
	lifes--;
}

with(obj_player)
{
	pontos++;
}