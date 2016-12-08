actions
action
	self shape color: (Color fromHexString: 'f5f502').
	iconElement shape form: self currentActionIcon.
	self
		update;
		signalUpdate