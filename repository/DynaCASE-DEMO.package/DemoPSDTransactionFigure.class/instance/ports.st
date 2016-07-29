as yet unclassified
ports
	^ self ownedElements select: [ :each | each isKindOf: DemoPSDTransactionPortFigure ]