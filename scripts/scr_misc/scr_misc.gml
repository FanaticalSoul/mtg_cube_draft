
/// @function					sout(value, [spacing]);
/// @param {any} value			value to output
/// @param {string} spacing		string used to seperate an array's values
/// @description				output the given value

function sout(value, spacing = " | ") {
	if (is_array(value)) {
		var _str_out = "";
		for (var i = 0; i < array_length(value); i++) {
			_str_out += string(value[i]);
			if (i+1 < array_length(value)) _str_out += spacing;
		}
		show_debug_message(_str_out);
	}
	else show_debug_message(string(value));
}


function get_file_img (card_name) {
	var _file_img_path = string(card_name);
	_file_img_path = string_replace_all(_file_img_path, ",", "");
	_file_img_path = string_replace_all(_file_img_path, "\'", "");
	_file_img_path = string_replace_all(_file_img_path, "-", "_");
	_file_img_path = string_replace_all(_file_img_path, " ", "_");
	_file_img_path = string_lower(_file_img_path);
	return "spr_"+_file_img_path;
}


function get_cards () {

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
				if      (j < sc1) array_push(_c1_arr, _card);
				else if (j < sc1+sc2) array_push(_c2_arr, _card);
				else if (j < sc1+sc2+sc3) array_push(_c3_arr, _card);
				else if (j < sc1+sc2+sc3+su1) array_push(_u1_arr, _card);
				else if (j < sc1+sc2+sc3+su1+su2) array_push(_u2_arr, _card);
				else if (j < sc1+sc2+sc3+su1+su2+sr1) array_push(_r1_arr, _card);
			}
			else if (i == 5) {
				if      (j < mc1) array_push(_c1_arr, _card);
				else if (j < mc1+mc2) array_push(_c2_arr, _card);
				else if (j < mc1+mc2+mc3) array_push(_c3_arr, _card);
				else if (j < mc1+mc2+mc3+mu1) array_push(_u1_arr, _card);
				else if (j < mc1+mc2+mc3+mu1+mu2) array_push(_u2_arr, _card);
				else if (j < mc1+mc2+mc3+mu1+mu2+mr1) array_push(_r1_arr, _card);
			}
			else if (i == 6) {
				if      (j < lc1) array_push(_l1_arr, _card);
				else if (j < lc1+lc2) array_push(_l2_arr, _card);
				else if (j < lc1+lc2+lc3) array_push(_l3_arr, _card);
			}
		}
	}
	
	return [_c1_arr, _c2_arr, _c3_arr, _u1_arr, _u2_arr, _r1_arr, _l1_arr, _l2_arr];
}



function get_pack (pack_comp, cube_cards = get_cards()) {
	var _pack = [];
	for (var i = 0; i < array_length(pack_comp.cards); i++) {
		for (var j = 0; j < pack_comp.cards[i]; j++) {
			// add custom shuffle method in // WoL
			var _selection = array_shuffle(cube_cards[i]);
			var _card = _selection[0];
			// add card
			array_push(_pack, _card);
		}
	}
	return _pack;
}



function get_pack_alt (pack_comp, cube_cards = get_cards()) {
	var _pack = [];
	for (var i = 0; i < array_length(pack_comp.cards); i++) {
		for (var j = 0; j < pack_comp.cards[i]; j++) {
			var _d13 = int64(random_range(1,14));
			if (_d13>13) _d13 = 13;
			var _d14 = int64(random_range(1,15));
			if (_d14>14) _d14 = 14;
			// add multiple custom shuffle methods in // WoL
			if (i == 0) { // get common
				if      (_d14 <= 10) array_push(_pack, array_shuffle(cube_cards[0])[0]); // 5/ 7
				else if (_d14 <= 13) array_push(_pack, array_shuffle(cube_cards[1])[0]); // 3/14
				else if (_d14 == 14) array_push(_pack, array_shuffle(cube_cards[2])[0]); // 1/14
			}
			else if (i == 1) { // get uncommon
				if      (_d13 <= 10) array_push(_pack, array_shuffle(cube_cards[3])[0]); //10/13
				else if (_d13 <= 13) array_push(_pack, array_shuffle(cube_cards[4])[0]); // 3/13
			}
			else if (i == 2) array_push(_pack, array_shuffle(cube_cards[5])[0]); // get rare
			else if (i == 3) { // get land
				if      (_d14 <= 10) array_push(_pack, array_shuffle(cube_cards[6])[0]); // 5/ 7 // shockland
				else if (_d14 <= 13) array_push(_pack, array_shuffle(cube_cards[7])[0]); // 3/14 // fetchland
				else if (_d14 == 14) array_push(_pack, array_shuffle(cube_cards[8])[0]); // 1/14 // triome
			}
		}
	}
	return _pack;
}