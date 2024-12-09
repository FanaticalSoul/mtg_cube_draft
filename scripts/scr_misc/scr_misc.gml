
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
