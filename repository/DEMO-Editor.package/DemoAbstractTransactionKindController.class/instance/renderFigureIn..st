construction
renderFigureIn: aView
		| box ellipse composite label element |
	self diagramController addingFigureFor: self.
	box := RTBox new
		height: 28;
		width: 28;
		color: Color white;
		borderColor: Color red;
		borderWidth: 1.5.
		
	ellipse := RTEllipse new
		size: 40;
		color: Color white;
		borderColor: Color black;
		borderWidth: 1.
	
	ellipse element @  OPRTFocusable.
	
	label := RTLabel new
		color: Color black;
		text: model name.
		
	composite := RTCompositeShape new.
	composite add: ellipse.
	composite add: box.
	composite add: label.	

	element := composite element.	
	(element trachelShape shapes at: 2) rotateByDegrees: 45.
	element @ (RTLabeled below view: aView; text: (model name); color: Color black).
	
	figure := element.
	figure @ RTDraggable.
	
	figure renderIn: aView.
	
	^ self diagramController addedFigureFor: self