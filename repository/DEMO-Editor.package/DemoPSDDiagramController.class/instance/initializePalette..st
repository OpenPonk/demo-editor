ui hooks
initializePalette: aPalette
	(aPalette newCreationEntry: [ DemoPSDTransactionController new ])
		label: 'Transaction'.
	(aPalette newConnectionCreationTool: [ DemoPSDCausalLinkController new ])
		label: 'Causal Link'.
	(aPalette newConnectionCreationTool: [ DemoPSDConditionalLinkController new ])
		label: 'Conditional Link'