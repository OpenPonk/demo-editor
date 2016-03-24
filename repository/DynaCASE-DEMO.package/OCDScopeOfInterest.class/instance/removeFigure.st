as yet unclassified
removeFigure
	super removeFigure.
	soiLabel view
		ifNotNil: [ 
			soiLabel remove.
			soiLabel := nil ]