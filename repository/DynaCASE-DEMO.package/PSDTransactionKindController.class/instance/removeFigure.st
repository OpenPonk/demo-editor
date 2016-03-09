as yet unclassified
removeFigure
	super removeFigure.
	self removeSwimLines.
	processSteps do: [ :each | each removeFigure ].
	label view
		ifNotNil: [ 
			label remove.
			label := nil ]