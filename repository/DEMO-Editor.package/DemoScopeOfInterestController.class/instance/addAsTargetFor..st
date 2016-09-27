as yet unclassified
addAsTargetFor: aController
	self diagramController addAsTargetFor: aController.
	(aController isKindOf: DemoActorRoleController)
		ifTrue: [ DemoFiguresFactory new move: aController figure with: self figure ].
	(aController isKindOf: DemoAbstractTransactionKindController)
		ifTrue: [ DemoFiguresFactory new move: aController figure with: self figure.
			"only on border"
			aController figure borderDraggableOn: self figure ]