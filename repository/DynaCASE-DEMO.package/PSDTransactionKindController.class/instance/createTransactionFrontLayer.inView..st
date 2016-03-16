as yet unclassified
createTransactionFrontLayer: aTransaction inView: aView
	| size position |
	size := (diagramController model getSizeFor: model dcID) at: 1.
	position := (diagramController model getPositionFor: model dcID) at: 1.
	transactionFrontLayer := (RTBox new
		height: size y;
		width: size x;
		borderColor: Color transparent;
		color: Color transparent) element.
	transactionFrontLayer translateTo: position.
	transactionFrontLayer
		addCallback:
			(TRExtentCallback
				block: [ :shape :ratio | 
					(aTransaction trachelShape shapes at: 1)
						width: transactionFrontLayer extent x;
						height: DEMOConfig PSDTransactionHeight.
					self saveSizes.
					aTransaction signalUpdate.
					transactionFrontLayer translateTo: aTransaction position ]).
	"transactionFrontLayer
		addCallback: (TRTranslationCallback block: [ :shape :ratio | self savePositions ])."
	transactionFrontLayer
		@ (DCRTResizableHorizontallySnapToGrid new cellSize: 5 @ DEMOConfig PSDTransactionHeight ).
	transactionFrontLayer
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: 20;
				cellHeight: DEMOConfig PSDTransactionHeight;
				verticalShift: 0;
				horizontalShift: 0;
				translationCallback: [ :aShift |  ]).
	"(RTConstraint on: aTransaction background: transactionFrontLayer)
		center;
		stick."
	aView add: transactionFrontLayer.
	transactionFrontLayer
		when: TRMouseLeftClick
		do: [ :event | self diagramController selectFigure: self figure ].