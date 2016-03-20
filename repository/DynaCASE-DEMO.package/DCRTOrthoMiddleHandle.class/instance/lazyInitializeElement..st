initialization
lazyInitializeElement: anEdge
	edge := anEdge.
	edge when: TRMouseLeftClick do: [ self showHandle ].
	edge trachelShape addCallback: (TRRemoveCallback block: [ self removeHandle ]).
	self connectWithView: edge view