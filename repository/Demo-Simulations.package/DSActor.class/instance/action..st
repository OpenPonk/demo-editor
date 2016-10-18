accessing
action: anIcon
	self shape form: anIcon.
	self
		update;
		signalUpdate.
	label
		translateBy: 0 @ 0;
		update;
		signalUpdate