actions
enabled
	self shape form: self enabledIcon.
	self
		update;
		signalUpdate.
	self announce: DSEnabled new