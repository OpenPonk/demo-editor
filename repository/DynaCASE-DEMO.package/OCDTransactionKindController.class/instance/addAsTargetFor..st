as yet unclassified
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	(aController isMemberOf: OCDExecutorLinkController)
		ifTrue: [ self model executorRole: aController source model ].
	(aController isMemberOf: OCDInitiatorLinkController)
		ifTrue: [ self model initiatorRole: aController source model ]