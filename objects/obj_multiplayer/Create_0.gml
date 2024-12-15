/// @description Insert description here

// before big bang
rollback_define_player(obj_player, "Instances");
rollback_define_input({
    left : mb_left, //vk_left,
    right : mb_right//vk_right,
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



// socket testing
/*
var port = 6510;
server = network_create_server(network_socket_tcp, port, 32);
while (server < 0 && port < 65535) {
    port++;
    server = network_create_server(network_socket_tcp, port, 32);
}


if server < 0 sout("failed connection");
else sout("successful connection");
*/