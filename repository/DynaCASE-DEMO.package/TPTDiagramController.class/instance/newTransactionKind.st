businessLogic
newTransactionKind
	| tranKindCtrl prodKindCtrl |
	tranKindCtrl := TPTTransactionKindController new.
	self addAsTargetFor: tranKindCtrl.
	"prodKindCtrl := TPTProductKindController new.
	prodKindCtrl model: tranKindCtrl model correspondingProductKind.
	self addAsTargetFor: prodKindCtrl."
	self layoutElements