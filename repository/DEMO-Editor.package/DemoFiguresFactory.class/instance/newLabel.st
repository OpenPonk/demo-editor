instance creation
newLabel
	^ RTStyledLabel new
		color: self textColor;
		height: 10;
		fontName: 'Bitmap DejaVu Sans';
		yourself