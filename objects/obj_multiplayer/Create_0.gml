/// @description Insert description here

rollback_define_player(obj_player, "Instances");
if (!rollback_game_running && room == map_starting_room) {
    var _join = rollback_join_game();
    if (!_join) rollback_create_game(2, false);
}