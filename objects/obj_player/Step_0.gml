/// @description Insert description here

var _input = rollback_get_input();
if (_input.left && array_length(current_pack) == 0) { // click left
	// open pack // CiD
	current_pack = get_card_pack(global.pack_comp_alt);
}