as yet unclassified
noAction
	self shape color: Color white.
	iconElement shape form: self currentIcon.
	self
		update;
		signalUpdate.
	communication from noAction.
	communication to noAction