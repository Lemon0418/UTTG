if (!instance_exists(obj_cutscene_brige)){
instance_create_depth(char_player.x, char_player.y, char_player.depth, obj_cutscene_brige)
instance_destroy(obj_bridge)
snd_play(snd_spike_disable)
}
