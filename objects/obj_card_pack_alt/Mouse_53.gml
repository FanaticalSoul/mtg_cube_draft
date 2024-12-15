/// @description Insert description here

var _cards = get_cards();

var _pack_composition = global.pack_comp_alt;

// delete all card objects // TF // may cause issues in multiplayer
while (instance_exists(obj_card)) instance_destroy(obj_card);


// create a test pack
var _pack = [];
var _pack_c1_comp = _pack_composition[0];
//show_debug_message(_pack_c1_comp);
var _tmp_x = card_x/2;
var _tmp_y = card_y/2;
//for (var i = 0; i < _pack_c1_comp.count; i++) {
_pack = [];
for (var j = 0; j < array_length(_pack_c1_comp.cards); j++) {
	for (var k = 0; k < _pack_c1_comp.cards[j]; k++) {
		if (j == 0) { // get common
			var _d14 = int64(random_range(1,15));
			if (_d14>14) _d14 = 14;
			//10/14
			if      (_d14 <= 10) array_push(_pack, array_shuffle(_cards[0])[0]);
			// 3/14
			else if (_d14 <= 13) array_push(_pack, array_shuffle(_cards[1])[0]);
			// 1/14
			else if (_d14 == 14) array_push(_pack, array_shuffle(_cards[2])[0]);
		}
	
		if (j == 1) { // get uncommon
			var _d13 = int64(random_range(1,14));
			if (_d13>13) _d13 = 13;
			//10/13
			if      (_d13 <= 10) array_push(_pack, array_shuffle(_cards[3])[0]);
			// 3/13
			else if (_d13 <= 13) array_push(_pack, array_shuffle(_cards[4])[0]);
		}
	
		if (j == 2) { // get rare
			array_push(_pack, array_shuffle(_cards[5])[0]);
		}
	
		if (j == 3) { // get land
			var _d14 = int64(random_range(1,15));
			if (_d14>14) _d14 = 14;
			// 10/14 // shockland
			if      (_d14 <= 10) array_push(_pack, array_shuffle(_cards[6])[0]);
			//  3/14 // fetchland
			else if (_d14 <= 13) array_push(_pack, array_shuffle(_cards[7])[0]);
			//  1/14 // triome
			else if (_d14 == 14) array_push(_pack, array_shuffle(_cards[8])[0]);
		}
	}
}
// add shuffle method in // WoL
_pack = array_shuffle(_pack);
sout(_pack); // TF
// draw the cards in the pack
for (var j = 0; j < array_length(_pack); j++) {
	var _card = _pack[j];
	var _sprite = asset_get_index(get_file_img(_card));
	var _obj_card = instance_create_layer(_tmp_x, _tmp_y, "Instances", obj_card);
	if (sprite_exists(_sprite)) _obj_card.sprite_index = _sprite; // update sprite if card exists
	_tmp_x += card_x;
}