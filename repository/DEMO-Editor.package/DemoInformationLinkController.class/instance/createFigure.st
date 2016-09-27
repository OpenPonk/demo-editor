as yet unclassified
createFigure
	^ DemoFiguresFactory new
		informationLinkFrom: self actorRoleController figure
		to: self transactionKindController figure