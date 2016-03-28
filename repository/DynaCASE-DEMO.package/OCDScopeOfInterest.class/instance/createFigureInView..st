as yet unclassified
createFigureInView: aView
	| element |
	element := (RTBox new
		height: model soiSize y;
		width: model soiSize x;
		color: Color transparent;
		borderColor: Color gray;
		borderWidth: 6) element.
	soiLabel := (RTLabel new text: model soiName) element.
	aView add: soiLabel.
	soiLabel pushBack.
	soiLabelConstraint := RTConstraint on: soiLabel background: element.
	soiLabelConstraint
		top;
		left;
		horizontalPadding: 0;
		verticalPadding: -25;
		stick.
	element
		addCallback:
			(TRTranslationCallback
				block: [ :shape :step | model soiPosition: element trachelShape position ]).
	element
		addCallback:
			(TRExtentCallback
				block: [ :shape :ratio | model soiSize: element trachelShape extent ]).
	element
		@
			(DCRTDraggableSnapToGrid new
				gridSize: DEMOConfig OCDGridSize;
				shift: (DEMOConfig OCDGridSize / 4) @ (DEMOConfig OCDGridSize / 4))
		@
			(DCRTResizableSnapToGrid new
				cellSize: DEMOConfig OCDGridSize @ DEMOConfig OCDGridSize;
				minSize: DEMOConfig OCDGridSize @ DEMOConfig OCDGridSize).
	aView add: element.
	element trachelShape translateTo: model soiPosition.
	element trachelShape pushBack.
	^ element