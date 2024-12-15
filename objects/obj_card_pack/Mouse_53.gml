/// @description Insert description here

var _cards = get_cards();

var _pack_composition = global.pack_comp_1st;

// delete all card objects // TF // may cause issues in multiplayer
while (instance_exists(obj_card)) instance_destroy(obj_card);


// create a test pack
var _pack = [];
var _pack_c1_comp = _pack_composition[0];
show_debug_message(_pack_c1_comp);
var _tmp_x = card_x/2;
var _tmp_y = card_y/2;
//for (var i = 0; i < _pack_c1_comp.count; i++) {
_pack = [];
for (var j = 0; j < array_length(_pack_c1_comp.cards); j++) {
	//show_debug_message("j "+string(j)+" k "+string(_pack_c1_comp.cards[j]));
	for (var k = 0; k < _pack_c1_comp.cards[j]; k++) {
		// add shuffle method in // WoL
		var _selection = array_shuffle(_cards[j]);
		var _card = _selection[0];
		if (j == 0) sout(["c1", _card]);
		if (j == 1) sout(["c2", _card]);
		if (j == 2) sout(["c3", _card]);
		if (j == 3) sout(["u1", _card]);
		if (j == 4) sout(["u2", _card]);
		if (j == 5) sout(["r1", _card]);
		if (j == 6) sout(["l1", _card]);
		if (j == 7) sout(["l2", _card]);
		// add card
		array_push(_pack, _card);
	}
}
// add shuffle method in // WoL
_pack = array_shuffle(_pack);
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
//}

/*
[ "Remand","Path to Exile","Regrowth","Sakura-Tribe Elder","Contaminated Landscape","Cathar Commando","Izzet Guildgate" ]
[ "Contaminated Landscape","Elvish Mystic","Primeval Titan","Swords to Plowshares","Chandra, Torch of Defiance","Contaminated Landscape","Azorius Guildgate" ]
[ "Dragon's Rage Channeler","Primeval Titan","Inferno Titan","Thragtusk","Swords to Plowshares","Fact or Fiction","Thalia, Guardian of Thraben" ]
[ "Thragtusk","Ravenous Chupacabra","Unearth","Abrade","Perilous Landscape","Talrand, Sky Summoner","Regrowth" ]
*/