hooks
createFigureInView: aView
	| transaction |
	self createSwimLines: aView.
	transaction := self createTransactionFigure: aView.
	
	"(RTConstraint on: transaction background: swimLines)
		center;
		stick."

	^ transaction