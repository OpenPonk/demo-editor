as yet unclassified
addAsTargetFor: aController
	| newActorRole |
	self assert: (self canBeTargetFor: aController).
	(aController isMemberOf: OCDElementaryActorRoleController )
		ifTrue: [ 
			aController diagramController: self diagramController.
			newActorRole := aController createModel.
			subElements add: aController.
			aController model: newActorRole.
			self model add: newActorRole.
			self registerModelEvents: newActorRole.
			self diagramController controllers add: aController.
			aController attach.
			self refreshFigure ]
		ifFalse: [ super addAsTargetFor: aController ]