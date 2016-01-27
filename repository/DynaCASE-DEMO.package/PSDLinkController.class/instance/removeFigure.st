as yet unclassified
removeFigure
	super removeFigure.
	multiplicityLabel view
		ifNotNil: [ 
			multiplicityLabel remove.
			multiplicityLabel := nil ]