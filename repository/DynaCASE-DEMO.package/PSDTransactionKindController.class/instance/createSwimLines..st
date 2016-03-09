as yet unclassified
createSwimLines: aView
	| swimLineShape |
	swimLineShape := RTBox new
		height: PSDDiagramController swimlineHeight;
		width: PSDDiagramController swimlineWidth;
		color: Color white;
		borderColor: Color lightGray.
	swimLines := RTCompositeShape new.
	swimLines add: swimLineShape.
	swimLines add: swimLineShape translateBy: 0 @ PSDDiagramController swimlineHeight.
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
	swimLinesFrontLayer @ DCRTResizableSnapToGrid @ RTDraggable.
	(RTConstraint on: swimLines background: swimLinesFrontLayer)
		inner;
		topLeft;
		stick.
	aView add: swimLines.
	aView add: swimLinesFrontLayer.
	^ swimLines 