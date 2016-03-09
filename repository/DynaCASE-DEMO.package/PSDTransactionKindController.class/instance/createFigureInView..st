hooks
createFigureInView: aView
	| transaction |
	self createSwimLines: aView.
	self createSwimLineLabels: aView.
	transaction := self createTransactionFigure: aView.
	
	"swimLinesFrontLayer
		addCallback:
			(TRTranslationCallback 
				block: [ :shape :step | 
					transaction translateTo:	swimLinesFrontLayer position.
					transaction signalUpdate ])."
	
	^ transaction