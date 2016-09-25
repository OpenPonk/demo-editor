ui hooks
initializePalette: aPalette
	(aPalette newCreationEntry: [ DemoActorRoleController new ]) label: 'Actor Role'.
	(aPalette newCreationEntry: [ DemoTransactionKindController new ])
		label: 'Transaction Kind'.
	(aPalette newConnectionCreationTool: [ DemoConnectionController new ])
		label: 'Initiator link'