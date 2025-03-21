if (_bordertype == 0) Border_SetEnabled(false);
else {
	Border_SetEnabled(true);
	if (_cborder != _bordertype)
	{
		event_user(2);
		_cborder = _bordertype;
	}
}