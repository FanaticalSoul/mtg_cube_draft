/// @description Insert description here


randomize();

sout(random_get_seed());

var _c1 = 9;
var _c2 = 4;
var _c3 = 2;
var _u1 = 4;
var _u2 = 2;
var _r1 = 2;

var _c1_m = 15;
var _c2_m = 8;
var _c3_m = 2;
var _u1_m = 6;
var _u2_m = 2;
var _r1_m = 2;

var _l1 = 10;
var _l2 = 10;
var _l3 = 10;

var _c1_arr = [];
var _c2_arr = [];
var _c3_arr = [];
var _u1_arr = [];
var _u2_arr = [];
var _r1_arr = [];
var _l1_arr = [];
var _l2_arr = [];
var _l3_arr = [];

for (var i = 0; i < array_length(global.cube); i++) {
	for (var j = 0; j < array_length(global.cube[i]); j++) {
		var _card = global.cube[i][j];
		if (i < 5) {
			if      (j < _c1) array_push(_c1_arr, _card);
			else if (j < _c1+_c2) array_push(_c2_arr, _card);
			else if (j < _c1+_c2+_c3) array_push(_c3_arr, _card);
			else if (j < _c1+_c2+_c3+_u1) array_push(_u1_arr, _card);
			else if (j < _c1+_c2+_c3+_u1+_u2) array_push(_u2_arr, _card);
			else if (j < _c1+_c2+_c3+_u1+_u2+_r1) array_push(_r1_arr, _card);
		}
		else if (i == 5) {
			if      (j < _c1_m) array_push(_c1_arr, _card);
			else if (j < _c1_m+_c2_m) array_push(_c2_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m) array_push(_c3_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m) array_push(_u1_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m+_u2_m) array_push(_u2_arr, _card);
			else if (j < _c1_m+_c2_m+_c3_m+_u1_m+_u2_m+_r1_m) array_push(_r1_arr, _card);
		}
		else if (i == 6) {
			if      (j < _l1) array_push(_l1_arr, _card);
			else if (j < _l1+_l2) array_push(_l2_arr, _card);
			else if (j < _l1+_l2+_l3) array_push(_l3_arr, _card);
		}
		//show_debug_message(_cube[i][j]);
	}
}

var _pack_composition = [{
	count : 4, // packs per player
	cards : [
		// cards
		5, // cx
		1, // ux
		0, // rx
		// lands
		1, // lx
	]
},{
	count : 4, // packs per player
	cards : [
		// cards
		3, // cx
		2, // ux
		1, // rx
		// lands
		1, // lx
	]
}];

var _cards = [_c1_arr, _c2_arr, _c3_arr, _u1_arr, _u2_arr, _r1_arr, _l1_arr, _l2_arr, _l3_arr];

/*
for (var i = 0; i < array_length(_cards); i++) {
	sout(_cards[i]);
}
*/



// delete all card objects // TF
while (instance_exists(obj_card)) {
	instance_destroy(obj_card);
}




/*
j 0 k 1
j 1 k 0
j 2 k 3
j 3 k 1
j 4 k 1
j 5 k 1
j 6 k 0
*/


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
			//3/14
			else if (_d14 <= 13) array_push(_pack, array_shuffle(_cards[1])[0]);
			//1/14
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
/*
for (var i = 0; i < array_length(_pack); i++) {
	sout(_pack[i]);
}
*/
// Elspeth, Knight-Errant
// add shuffle method in // WoL
_pack = array_shuffle(_pack);
sout(_pack);
// draw the cards in the pack
for (var j = 0; j < array_length(_pack); j++) {
	var _card = _pack[j];
	var _sprite = asset_get_index(get_file_img(_card));
	//show_debug_message(_sprite);
	//show_debug_message(_sprite);
	var _obj_card = instance_create_layer(_tmp_x, _tmp_y, "Instances", obj_card);
	if (sprite_exists(_sprite)) {
		_obj_card.sprite_index = _sprite;
	}
	_tmp_x += card_x;
}