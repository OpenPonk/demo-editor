as yet unclassified
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	(aController isMemberOf: OCDExecutorLinkController)
		ifTrue: [ self model executorRole: aController source model.
			self createLink: aController ].
	(aController isMemberOf: OCDInitiatorLinkController)
		ifTrue: [ self model initiatorRole: aController source model.
			self createLink: aController ].
	(aController isMemberOf: OCDInformationLinkController)
		ifTrue: [ self createLink: aController ].
	diagramController controllers add: aController.
	aController attach