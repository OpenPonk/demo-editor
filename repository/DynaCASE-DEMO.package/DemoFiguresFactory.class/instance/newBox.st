instance creation
newBox
	^ RTBox new
		color: self backgroundColor;
		borderColor: self borderColor;
		borderWidth: self borderWidth;
		yourself