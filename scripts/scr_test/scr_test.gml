

function get_card_pack (pack_comp = global.pack_comp_1st) {
	// delete all card objects // TF // may cause issues in multiplayer
	while (instance_exists(obj_card)) instance_destroy(obj_card);
	// create a test pack
	var _pack_c1_comp = pack_comp[0];
	// add _pack_c1_comp.count // WoL
	var _pack = get_pack(_pack_c1_comp);
	// add custom shuffle method in // WoL
	_pack = array_shuffle(_pack);
	// output pack // TF
	sout(_pack);
	// return pack
	return _pack;
}
