/// @description Insert description here

//sout(["player local",player_local]);

var _input = rollback_get_input();

if (_input.left) { // click left
	x -= 10;
}
if (_input.right) {
	x += 10;
}
// etc.