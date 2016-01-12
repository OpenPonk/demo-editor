as yet unclassified
createFigure

	| box composite label element |

	box := RTBox new
		height: 38;
		width: 38;
		color: Color veryVeryLightGray;
		borderColor: Color gray;
		borderWidth: 6.
	
	label := RTLabel new
		text: 'Ax';
		color: Color black.
	
	composite := RTCompositeShape new.
	composite add: box.
	composite add: label.	

	element := composite element.
	^ element