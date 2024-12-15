/// @description Insert description here

sout(["player",player_id,"created"]);

switch (player_id) {
	case 0:
		x = card_x/2;
		y = card_y/2;
		sprite_index = spr_baleful_strix;
		break;
	case 1:
		x = card_x/2;
		y = card_y/2+card_y;
		sprite_index = spr_tidehollow_sculler;
		break;
}


/*
if (player_local && player_id == 0) {
	x = card_x/2;
	y = card_y/2;
	view_set_visible(0, true );
	view_set_visible(1, false);
	view_set_visible(2, false);
	//view_visible[0] = true;
}
else if (player_id == 1) {
	x = card_x/2;
	y = card_y+card_y/2;
	view_set_visible(0, false);
	view_set_visible(1, true );
	view_set_visible(2, false);
}
*/
/*
if (player_id == 0) instance_create_depth(0, 0, depth, obj_player_1);
//if (player_id == 1) instance_create_depth(card_x, card_y*3, depth, obj_player_2);
*/
player_input = rollback_get_input();

/*
y = room_height / 2;

if (player_id == 0) {
	x = room_width / 2;
	viewport_enabled[2] = false;
	viewport_enabled[1] = false;
    viewport_enabled[0] = true;  // Enable viewport for player 1
	view_xview[0] = 0;  // Set X position of Player 1’s view
    view_yview[0] = 0;  // Set Y position of Player 1’s view
    view_wview[0] = 3416; // Width of Player 1’s view
    view_hview[0] = 680; // Height of Player 1’s view

    //view_xview[0] = player_1_position.x;  // Set the position of the viewport
    //view_yview[0] = player_1_position.y;
    //view_wview[0] = 800;  // Width of the viewport (depends on your game design)
    //view_hview[0] = 600;  // Height of the viewport (depends on your game design)


	//camera_create_view(0, 0, card_x*7, card_y, 0, id);
}
else if (player_id == 1) {
	x = room_width / 2 - sprite_height;
	viewport_enabled[2] = false;
    viewport_enabled[0] = false;
	viewport_enabled[1] = true;
	view_xview[1] = 0;
	view_yview[1] = 680;
	view_wview[1] = 3416;
	view_hview[1] = 680;
}
*/
//camera_create_view(0, card_y, card_x*7, card_y, 0, id);