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
			box buttons do: [ :button | self moveActorsForButton: button ].
			box buttons do: [ :button | self showSpeechBubbleForButton: button ].
			eventManager connectControlBox: box with: each.
			box ].

	self connectBoxes: boxes.
"		1halt.
	view open.
	view @ RTDraggableView."
	RTVerticalLineLayout new
		gapSize: 40;
		on: boxes.
	boxes asGroup translateBy: 300 @ 0.
"	edges := ((boxes flatCollect: #buttons) flatCollect: #connectedEdges) asSet asOrderedCollection.
	edges select: [ :each | each model key = #conditional] thenDo: [ :each | each notUseInLayout ].
	RTHorizontalTreeLayout new on: boxes edges:	edges.
	view signalUpdate."
	"	view pushBackEdges"