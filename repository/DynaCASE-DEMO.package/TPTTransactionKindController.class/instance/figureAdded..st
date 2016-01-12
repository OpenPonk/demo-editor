as yet unclassified
figureAdded: aFigure
	aFigure class = RTElement
		ifTrue: [ aFigure translateTo: self lastClickPosition ].
	self addMenuFor: aFigure.
	self addMouseEventsFor: aFigure