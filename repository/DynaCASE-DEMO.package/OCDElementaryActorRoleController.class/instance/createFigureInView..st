as yet unclassified
createFigureInView: aView

	| box composite label element |

	box := RTBox new
		height: 40;
		width: 40;
		color: Color white;
		borderColor: Color black;
		borderWidth: 2.
	
	label := RTLabel new
		text: self printableID;
		color: Color black.
	
	composite := RTCompositeShape new.
	composite add: box.
	composite add: label.

	element := composite element.
	element @ (RTLabelled below view: aView; text: (model name); color: Color black).	
	^ element