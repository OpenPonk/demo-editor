as yet unclassified
action
	self shape color: (Color fromHexString: 'f5f502').
	iconElement shape form: self currentActionIcon.
	self
		update;
		signalUpdate.
	communication from actionLeft.
	communication to actionRight