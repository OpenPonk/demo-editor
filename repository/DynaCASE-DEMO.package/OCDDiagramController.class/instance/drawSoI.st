as yet unclassified
drawSoI
	soi := (RTBox new
		height: self model soiSize y;
		width: self model soiSize x;
		color: Color transparent;
		borderColor: Color gray;
		borderWidth: 6) element.
		
	soi addCallback: (TRTranslationCallback block:
		[ :shape :step | self model soiPosition: soi trachelShape position ]).
	soi addCallback: (TRExtentCallback block:
		[ :shape :ratio | self model soiSize: soi trachelShape extent ]).
	
	soi
		@
			(DCRTDraggableSnapToGrid new
				gridSize: gridSize;
				shift: (gridSize - 20) @ (gridSize - 20))
		@
			(DCRTResizableSnapToGrid new
				cellSize: gridSize @ gridSize;
				minSize: gridSize @ gridSize).
	view add: soi.
	
	soi trachelShape translateTo: self model soiPosition.
	soi trachelShape pushBack.