as yet unclassified
addMultiplicityToEdge: anEdge
	multiplicityLabel := (RTLabel new text: model multiplicity) element.
	diagramController view add: multiplicityLabel.
	multiplicityLabel @ RTDraggable.
	
	multiplicityLabelConstraint := DCRTRailConstraint new.
	multiplicityLabelConstraint gripLine color: Color lightGray.
	"const gripShape size: 10."
	multiplicityLabelConstraint
		initialPosition: 0.5;
		distance: 15.
	multiplicityLabelConstraint element: multiplicityLabel connection: anEdge.