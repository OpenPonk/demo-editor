as yet unclassified
createSwimLines: aView
	| swimLineShape |
	swimLineShape := RTBox new
		height: PSDDiagramController swimlineHeight;
		width: PSDDiagramController swimlineWidth;
		color: Color white;
		borderColor: Color lightGray.
	swimLines := RTCompositeShape new.
	swimLines add: swimLineShape translateBy: 0 @ (0 - PSDDiagramController swimlineHeight / 2).
	swimLines add: swimLineShape translateBy: 0 @ PSDDiagramController swimlineHeight / 2.
	swimLines := swimLines element.
	swimLinesFrontLayer := (RTBox new
		height: PSDDiagramController swimlineHeight * 2;
		width: PSDDiagramController swimlineWidth;
		borderColor: Color transparent;
		color: Color transparent) element.
	swimLinesFrontLayer
		addCallback:
			(TRExtentCallback
				block: [ :shape :ratio | 
					swimLines
						extent: swimLinesFrontLayer extent x @ PSDDiagramController swimlineHeight.
					swimLines signalUpdate ]).
				
	swimLinesFrontLayer @ (DCRTResizableHorizontallySnapToGrid new
				cellSize: 20 @ (PSDDiagramController swimlineHeight)).
	swimLinesFrontLayer @ (DCRTDraggableSnapToIrregularGrid new
				cellWidth: 20;
				cellHeight: PSDDiagramController swimlineHeight;
				verticalShift: 0;
				horizontalShift: 0;
				translationCallback: [ :aShift | self swimLinesMoved ] ).
	
	(RTConstraint on: swimLines background: swimLinesFrontLayer)
		inner;
		topLeft;
		stick.
	aView add: swimLines.
	aView add: swimLinesFrontLayer.
	
	swimLinesFrontLayer 
		when: TRMouseLeftClick
		do: [ :event | 
			self diagramController selectFigure: self figure ].
	
	^ swimLines 