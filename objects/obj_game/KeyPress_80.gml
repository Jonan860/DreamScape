/// @description Insert description here
// You can write your code in this editor


if(audio_get_master_gain(0)>0)
{
audio_set_master_gain(0,0)
}
else
{
audio_set_master_gain(0,1)
}
