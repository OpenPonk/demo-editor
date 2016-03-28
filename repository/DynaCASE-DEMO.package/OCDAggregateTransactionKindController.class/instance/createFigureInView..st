as yet unclassified
createFigureInView: aView
	| box ellipse1 ellipse2 composite label element |
	box := RTBox new
		height: 28;
		width: 28;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.5.
	ellipse1 := RTEllipse new
		size: 40;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.
	ellipse2 := RTEllipse new
		size: 40;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.
	label := RTLabel new
		text: self printableID;
		color: Color black.
	composite := RTCompositeShape new.
	composite add: ellipse1 translateBy: 5 @ 0.
	composite add: ellipse2.
	composite add: box.
	composite add: label.
	element := composite element.
	(element trachelShape shapes at: 3) rotateByDegrees: 45.
	element
		@
			(RTLabeled below
				view: aView;
				text: model name;
				color: Color black;
				below).
	^ element