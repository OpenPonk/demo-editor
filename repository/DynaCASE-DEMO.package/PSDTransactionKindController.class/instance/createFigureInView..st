hooks
createFigureInView: aView
	| transaction |
	self createSwimLines: aView.
	self createSwimLineLabels: aView.
	transaction := self createTransactionFigure: aView.
	(diagramController model isSizeLocked: model uuid)
		ifTrue: [ self createTransactionFrontLayer: transaction inView: aView ].
	^ transaction