businessLogic
newTransactionKind
	| tranKindCtrl |
	tranKindCtrl := TPTTransactionKindController new.
	self addAsTargetFor: tranKindCtrl.
	self layoutElements