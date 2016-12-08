action
glow
	glow ifNotNil: #remove.
	glow := RTBox new
		width: self width;
		height: self height;
		color: Color transparent;
		borderColor: Color yellow;
		borderWidth: 5;
		element.
	glow translateTo: self position.
	self view add: glow.
	glow pushBack.
	self view signalUpdate