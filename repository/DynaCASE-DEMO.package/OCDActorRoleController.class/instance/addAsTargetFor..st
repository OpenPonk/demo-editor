as yet unclassified
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	(aController isMemberOf: OCDExecutorLinkController)
		ifTrue: [ aController source model executorRole: self model ].
	(aController isMemberOf: OCDInitiatorLinkController)
		ifTrue: [ aController source model initiatorRole: self model ].
	(aController isMemberOf: OCDInformationLinkController)
		ifTrue:
			[ | newModel |
			newModel := aController createModel.
			aController model: newModel.
			diagramController model add: newModel ].
	diagramController controllers add: aController.
	aController attach