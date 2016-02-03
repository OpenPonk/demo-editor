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
		ifTrue:
			[ | prodKindCtrl |
			prodKindCtrl := TPTProductKindController new.
			prodKindCtrl model: aController model correspondingProductKind.
			self addAsTargetFor: prodKindCtrl.
			trans add: aController.
			prods add: prodKindCtrl ]
		ifFalse: [ self layoutElements ]