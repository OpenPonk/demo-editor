as yet unclassified
addAsTargetFor: aController
	| newActorRole |
	self assert: (self canBeTargetFor: aController).
	(aController isMemberOf: OCDElementaryActorRoleController )
		ifTrue: [ aController diagramController: self diagramController.
			newActorRole := aController createModel.
			aController model: newActorRole.
			self diagramController controllers add: aController.
			subElements add: aController figure.
			self model add: newActorRole.
			aController attach.
			self refreshFigure ]
		ifFalse: [ super addAsTargetFor: aController ]