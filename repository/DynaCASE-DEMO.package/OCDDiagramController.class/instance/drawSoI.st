as yet unclassified
drawSoI
	soi := (RTBox new
		height: self model soiSize y;
		width: self model soiSize x;
		color: Color transparent;
		borderColor: Color gray;
		borderWidth: 6) element.
	soiLabel := (RTLabel new text: model soiName) element.
	view add: soiLabel.
	soiLabel pushBack.
	soiLabelConstraint := RTConstraint on: soiLabel background: soi.
	soiLabelConstraint
		top;
		left;
		horizontalPadding: 0;
		verticalPadding: -25;
		stick.
	soi
		addCallback:
			(TRTranslationCallback
				block: [ :shape :step | self model soiPosition: soi trachelShape position ]).
	soi
		addCallback:
			(TRExtentCallback block: [ :shape :ratio | self model soiSize: soi trachelShape extent ]).
	soi
		@
			(DCRTDraggableSnapToGrid new
				gridSize: gridSize;
				shift: (gridSize / 4) @ (gridSize / 4))
		@
			(DCRTResizableSnapToGrid new
				cellSize: gridSize @ gridSize;
				minSize: gridSize @ gridSize).
	view add: soi.
	soi trachelShape translateTo: self model soiPosition.
	soi trachelShape pushBack