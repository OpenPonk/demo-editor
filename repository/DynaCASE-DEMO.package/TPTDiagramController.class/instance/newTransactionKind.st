businessLogic
newTransactionKind
	| tranKindCtrl prodKindCtrl |

	tranKindCtrl := TPTTransactionKindController new.
	self addAsTargetFor: tranKindCtrl.
	
	prodKindCtrl := TPTProductKindController new.
	tranKindCtrl addAsTargetFor: prodKindCtrl.

	trans add: tranKindCtrl figure.
	self view add: trans last.
	prods add: prodKindCtrl figure.
	self view add: prods last.

	self repaint.
	self view signalUpdate