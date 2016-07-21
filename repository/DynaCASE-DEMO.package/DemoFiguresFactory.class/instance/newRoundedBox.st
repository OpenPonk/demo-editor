instance creation
newRoundedBox
	^ RTRoundedBox new
		color: self backgroundColor;
		borderColor: self borderColor;
		borderWidth: self borderWidth;
		yourself