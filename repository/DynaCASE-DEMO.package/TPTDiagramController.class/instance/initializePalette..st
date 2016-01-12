ui hooks
initializePalette: aPalette
	aPalette addItem
		label: 'New transaction';
		icon: nil;
		action: [ self newTransactionKind ].