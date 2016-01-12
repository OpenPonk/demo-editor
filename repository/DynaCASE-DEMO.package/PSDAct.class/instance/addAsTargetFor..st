adding
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	aController createModel.
	diagramController controllers add: aController.
	aController attach.
	
	(isUpper and: (aController isMemberOf: PSDInitiationLinkController)) ifTrue: [ aController source transactionController addInitiationLink: aController model ].
	((isUpper not) and: (aController isMemberOf: PSDWaitingLinkController)) ifTrue: [ aController source transactionController addWaitingLink: aController model ].
	
	self increaseNumberOfConnections.
	aController source increaseNumberOfConnections.