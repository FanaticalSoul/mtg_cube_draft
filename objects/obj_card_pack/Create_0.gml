/// @description Insert description here

function get_file_img (card_name) {
	var _file_img_path = string(card_name);
	_file_img_path = string_replace_all(_file_img_path, ",", "");
	_file_img_path = string_replace_all(_file_img_path, "\'", "");
	_file_img_path = string_replace_all(_file_img_path, " ", "_");
	_file_img_path = string_lower(_file_img_path);
	return "spr_"+_file_img_path;
}
