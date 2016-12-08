actions
completedAction
	self shape color: (Color fromHexString: 'b8b8ff').
	iconElement shape form: self currentCompletionIcon.
	self
		update;
		signalUpdate