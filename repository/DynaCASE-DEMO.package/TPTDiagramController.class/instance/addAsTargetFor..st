adding
addAsTargetFor: aController
	| newModel |
	self assert: (self canBeTargetFor: aController).
	aController diagramController: self.
	newModel := aController createModel.
	self model add: newModel.
	aController model: newModel.
	self controllers add: aController.
	aController attach.
	(aController isKindOf: TPTTransactionKindController)
		ifTrue: [ trans add: aController figure ].
	(aController isKindOf: TPTProductKindController)
		ifTrue:
			[ prods add: aController figure ].
	self repaint.
	self view signalUpdate