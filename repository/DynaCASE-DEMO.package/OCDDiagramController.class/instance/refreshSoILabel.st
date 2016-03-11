as yet unclassified
refreshSoILabel
	soiLabel
		ifNotNil: [ soiLabel trachelShape text: model soiName.
			soiLabelConstraint move.
			soiLabel signalUpdate ]