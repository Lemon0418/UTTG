var _block = instance_create_depth(2,0,0,block);
_block.image_yscale = room_height;
instance_create_depth(0,0,-1,UTWS_cutscene0_black);
if (global.flag[9] <= 1) {
  Camera_Shake(2,2,4,4);
  audio_play_sound(snd_spike_disable, 1, 0);
  alarm[1] = 60;
}
else instance_destroy();