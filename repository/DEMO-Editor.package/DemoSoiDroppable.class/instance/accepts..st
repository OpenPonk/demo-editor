as yet unclassified
accepts: aFigure
	^ (aFigure isKindOf: DemoElementaryActorRoleFigure)
		or: [ aFigure isKindOf: DemoTransactionFigure ]