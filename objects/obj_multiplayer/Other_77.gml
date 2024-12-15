sout(["id",rollback_event_param.player_id]);

if (rollback_event_param.player_id == 0) {
	view_set_visible(0, true);
	view_set_visible(1, false);
	view_set_visible(2, false);
}
else if (rollback_event_param.player_id == 1) {
	view_set_visible(0, false);
	view_set_visible(1, true );
	view_set_visible(2, false);
}
instance_activate_all();