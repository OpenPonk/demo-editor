as yet unclassified
removeFigure
	multiplicityLabel view
		ifNotNil: [ 
			multiplicityLabel remove.
			multiplicityLabel := nil ].
	super removeFigure.