/// @description Insert description here

// before big bang
rollback_define_player(obj_player, "Instances");
rollback_define_input({
    left  : mb_left,
    right : mb_right
    //down : vk_down,
    //up : vk_up,
    //jump : vk_space
});
// big bang?
if (!rollback_game_running && room == map_starting_room) {
	instance_deactivate_all(true);
    var _join = rollback_join_game();
    if (!_join) rollback_create_game(2, false/**/);
}