instance creation
createHandle
	| handle |
	handle := RTBox new
		size: 6;
		color: Color black;
		element.
	handle
		@
			(DCRTDraggableSnapToIrregularGrid new
				cellWidth: self cellSize x;
				cellHeight: self cellSize y;
				verticalShift: 3;
				horizontalShift: 3).
	^ handle