as yet unclassified
refreshFigure
	soiLabel
		ifNotNil: [ soiLabel trachelShape text: model soiName.
			soiLabelConstraint move.
			soiLabel signalUpdate ]