as yet unclassified
createControlBoxes
	| eventManager f |
	f := DSFiguresFactory new.
	eventManager := DSEventManager new.
	boxes := transactions
		collect: [ :each | 
			| box |
			box := DSBox new.
			box model: each.
			box @ DCRTResizableHorizontallySnapToGrid.
			box @ RTDraggable.
			view add: box.
			eventManager connectControlBox: box with: each.
			box ].
	RTVerticalLineLayout new gapSize: 40; on: boxes.
	boxes asGroup translateBy: 300 @ 0.
	self connectBoxes: boxes.
"	view pushBackEdges"