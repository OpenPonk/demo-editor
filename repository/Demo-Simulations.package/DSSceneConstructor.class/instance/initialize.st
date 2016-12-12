as yet unclassified
initialize
	super initialize.
	view := RTView new.
	self initializeView: view.
	figuresFactory := DSFiguresFactory new.
	actorLines := Dictionary new.
	modelManager := DSModelManager new