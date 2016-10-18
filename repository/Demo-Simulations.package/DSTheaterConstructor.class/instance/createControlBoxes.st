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
			eventManager connectControlBox: box with: each.
			box ].
	view addAll: boxes.
	RTVerticalLineLayout new gapSize: 40; on: boxes.
	boxes asGroup translateBy: 300 @ 0.
	self connectBoxes: boxes.

	"	view add: (f causalLinkFrom: box1 buttons first to: box2 buttons first).
	view add: (f causalLinkFrom: box1 buttons first to: box3 buttons first).
	view add: (f conditionalLinkFrom: box2 buttons fifth to: box1 buttons third).
	view add: (f conditionalLinkFrom: box2 buttons second to: box3 buttons first).
	view add: (f conditionalLinkFrom: box3 buttons last to: box1 buttons third)."
	view pushBackEdges