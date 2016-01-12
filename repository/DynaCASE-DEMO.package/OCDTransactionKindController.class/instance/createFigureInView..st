as yet unclassified
createFigureInView: aView

	| box ellipse composite label element |

	box := RTBox new
		height: 28;
		width: 28;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.5.
	
	ellipse := RTEllipse new
		size: 40;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.
	
	label := RTLabel new
		text: (model codeName);
		color: Color black.
	
	composite := RTCompositeShape new.
	composite add: ellipse.
	composite add: box.
	composite add: label.	

	element := composite element.	
	(element trachelShape shapes at: 2) rotateByDegrees: 45.
	element @ (RTLabelled below view: aView; text: (model name); color: Color black).
	
	^ element