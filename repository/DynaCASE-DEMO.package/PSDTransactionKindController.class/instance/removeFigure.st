as yet unclassified
removeFigure
	super removeFigure.
	processSteps do: [ :each | each removeFigure ].
	label view
		ifNotNil: [ 
			label remove.
			label := nil ]