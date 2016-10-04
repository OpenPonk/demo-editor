ui hooks
initializePalette: aPalette
	(aPalette newCreationEntry: [ DemoPSDTransactionController new ])
		label: 'Transaction'.
	(aPalette newCreationEntry: [ DemoPSDLinkController new ])
		label: 'Conditional Link'