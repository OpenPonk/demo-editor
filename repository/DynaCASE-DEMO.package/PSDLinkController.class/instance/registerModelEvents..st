as yet unclassified
registerModelEvents: aModel
	super registerModelEvents: aModel.
	aModel
		when: OPElementChanged
		do: [ :event | 	self refreshFigure ]