as yet unclassified
createHandle: aCorner
	| handle |
	handle := RTBox new size: 6.
	(aCorner = #left or: aCorner = #right)
		ifTrue: [ handle color: Color black.
			handle := handle element.
			handle @ (DCRTDraggableSnapToIrregularGrid new 
			cellWidth: self cellSize x;
			cellHeight: self cellSize y;
			verticalShift: 3;
			horizontalShift: 3) ]
		ifFalse: [ handle color: Color gray.
			handle := handle element ].
	^ handle