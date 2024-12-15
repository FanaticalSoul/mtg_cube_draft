// draw the cards in the pack
var _tmp_x = x;
var _tmp_y = y;
for (var i = 0; i < array_length(current_pack); i++) {
	var _card = current_pack[i];
	var _sprite = asset_get_index(get_file_img(_card));
	var _obj_card = instance_create_layer(_tmp_x, _tmp_y, "Instances", obj_card);
	if (sprite_exists(_sprite)) _obj_card.sprite_index = _sprite; // update sprite if card exists
	_tmp_x += card_x;
}