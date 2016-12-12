as yet unclassified
createControlBoxes
	| eventManager f layoutEdges |
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
	layoutEdges := RTGroup new.
	(boxes flatCollect: [ :each | each buttons flatCollect: #connectedEdges ])
		select: [ :each | each model key = #causal ]
		thenDo: [ :each | layoutEdges add: (RTEdge from: each from owner to: each to owner) ].
	view addAll: layoutEdges.
	RTHorizontalDominanceTreeLayout new
		doNotAttachPoint;
		on: boxes.
	layoutEdges do: #remove.
	RTVerticalLineLayout new
		gapSize: 40;
		on: (boxes sorted: [ :a :b | a position y < b position y ]).
	RTVerticalLineLayout new
		gapSize: 100;
		on: ((boxes sorted: [ :a :b | a position y < b position y ]) collect: #model).
	boxes asGroup translateBy: 300 @ 0