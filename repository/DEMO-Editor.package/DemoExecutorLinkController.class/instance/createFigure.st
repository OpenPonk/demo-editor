as yet unclassified
createFigure
	^ DemoFiguresFactory new
		executorLinkFrom: self transactionKindController figure
		to: self actorRoleController figure