
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