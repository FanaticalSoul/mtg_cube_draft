
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
