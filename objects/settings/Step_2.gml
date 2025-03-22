if (_bordertype == 0) {
	if (Border_IsEnabled()) Border_SetEnabled(false);
}
else {
	if (!Border_IsEnabled()) Border_SetEnabled(true);
	if (_cborder != _bordertype)
	{
		event_user(2);
		_cborder = _bordertype;
	}
}