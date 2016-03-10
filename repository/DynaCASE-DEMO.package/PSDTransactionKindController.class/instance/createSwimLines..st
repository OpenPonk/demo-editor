as yet unclassified
createSwimLines: aView
	| swimLineShape |
	swimLineShape := RTBox new
		height: DEMOConfig PSDSwimlineHeight;
		width: DEMOConfig PSDSwimlineWidth;
		color: Color white;
		borderColor: Color lightGray.
	swimLines := RTCompositeShape new.
	swimLines add: swimLineShape translateBy: 0 @ ((0 - DEMOConfig PSDSwimlineHeight) / 2).
	swimLines add: swimLineShape translateBy: 0 @ DEMOConfig PSDSwimlineHeight / 2.
	swimLines := swimLines element.
	swimLinesFrontLayer := (RTBox new
		height: DEMOConfig PSDSwimlineHeight * 2;
		width: DEMOConfig PSDSwimlineWidth;
		borderColor: Color transparent;
		color: Color transparent) element.
	swimLinesFrontLayer
		addCallback:
			(TRExtentCallback
				block: [ :shape :ratio | 
					swimLines extent: swimLinesFrontLayer extent x @ DEMOConfig PSDSwimlineHeight.
					self saveSizes.
					swimLines signalUpdate ]).
	swimLinesFrontLayer
		addCallback: (TRTranslationCallback block: [ :shape :ratio | self savePositions ]).
	swimLinesFrontLayer
		@ (DCRTResizableHorizontallySnapToGrid new cellSize: 20 @ DEMOConfig PSDSwimlineHeight).
	swimLinesFrontLayer
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: 20;
				cellHeight: DEMOConfig PSDSwimlineHeight;
				verticalShift: 0;
				horizontalShift: 0;
				translationCallback: [ :aShift | self swimLinesMoved ]).
	(RTConstraint on: swimLines background: swimLinesFrontLayer)
		inner;
		topLeft;
		stick.
	aView add: swimLines.
	aView add: swimLinesFrontLayer.
	swimLinesFrontLayer
		when: TRMouseLeftClick
		do: [ :event | self diagramController selectFigure: self figure ].
	^ swimLines