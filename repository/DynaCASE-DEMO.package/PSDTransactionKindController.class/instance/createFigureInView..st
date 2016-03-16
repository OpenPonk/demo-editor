hooks
createFigureInView: aView
	| transaction |
	self createSwimLines: aView.
	self createSwimLineLabels: aView.
	transaction := self createTransactionFigure: aView.
	self createTransactionFrontLayer: transaction inView: aView.
	^ transaction