action
glow
	glow := RTBox new
		width: self width;
		height: self height;
		color: Color transparent;
		borderColor: Color yellow;
		borderWidth: 5;
		element.
	self view add: glow.
	glow pushBack.
	self view signalUpdate