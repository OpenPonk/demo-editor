as yet unclassified
rebuild
	| controllersForLayouting |
	gridSize := 35/2.
	controllers := nil.
	self view cleanAll.
	
	controllersForLayouting := self createControllers.
	self layoutFigures: controllersForLayouting.
	self drawSoI.
	controllersForLayouting do: [ :each | self addTranslationCallback: each ].

	self view canvas camera focusOnCenter