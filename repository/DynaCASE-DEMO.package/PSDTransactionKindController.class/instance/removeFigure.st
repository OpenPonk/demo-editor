as yet unclassified
removeFigure
	super removeFigure.
	self removeSwimLines.
	self removeLabels.
	self removeTransactionFrontLayer.
	label view
		ifNotNil: [ 
			label remove.
			label := nil ]