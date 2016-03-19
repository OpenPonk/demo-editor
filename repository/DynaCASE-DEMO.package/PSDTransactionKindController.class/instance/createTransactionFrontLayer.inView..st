as yet unclassified
createTransactionFrontLayer: aTransaction inView: aView
	| size position |
	(diagramController model isSizeLocked: model dcID)
		ifTrue: [ size := (diagramController model getSizeFor: model dcID) at: 1 ]
		ifFalse: [ size := 290 @ DEMOConfig PSDTransactionHeight ].
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
					aTransaction translateTo: transactionFrontLayer position.
					self layoutProcSteps ]).
	transactionFrontLayer @ (DCRTResizableHorizontallySnapToGrid new cellSize: 20 @ DEMOConfig PSDTransactionHeight).
	transactionFrontLayer
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: 20;
				cellHeight: DEMOConfig PSDSwimlineHeight;
				verticalShift: DEMOConfig PSDTransactionHeight / 2;
				translationCallback: [ :aShift | 
					aTransaction translateTo: transactionFrontLayer position.
					self figureMoved: aShift ]).
	aView add: transactionFrontLayer.
	transactionFrontLayer when: TRMouseLeftClick do: [ :event | self diagramController selectFigure: self figure ].
	transactionFrontLayer when: TRMouseRightClick
		do: [ :event | self figure announce: (TRMouseRightClick fromEvent: event) ]
	
