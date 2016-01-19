as yet unclassified
refreshFigure
	multiplicityLabel
		ifNotNil: [ multiplicityLabel trachelShape text: model multiplicity.
			multiplicityLabel signalUpdate.
			multiplicityLabelConstraint updatePosition ]