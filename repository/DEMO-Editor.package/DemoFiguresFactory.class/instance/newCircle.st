instance creation
newCircle
	^ RTRoundedBox new
		borderRadiusElement: [ :el | (el shape widthFor: el) / 2 ];
		color: self backgroundColor;
		borderColor: self borderColor;
		borderWidth: self borderWidth;
		yourself