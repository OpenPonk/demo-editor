ui hooks
initializePalette: aPalette
	(aPalette newCreationEntry: [ DemoElementaryActorRoleController new ])
		label: 'Elementary Actor Role';
		whenCompletedRename.
	(aPalette newCreationEntry: [ DemoCompositeActorRoleController new ])
		label: 'Composite Actor Role';
		whenCompletedRename.
	aPalette newSeparator.
	(aPalette newCreationEntry: [ DemoTransactionKindController new ])
		label: 'Transaction Kind'.
	(aPalette newCreationEntry: [ DemoAggregateTransactionKindController new ])
		label: 'Aggregate Transaction Kind'.
	aPalette newSeparator.
	(aPalette newConnectionCreationTool: [ DemoInitiatorLinkController new ])
		label: 'Initiator link'.
	(aPalette newConnectionCreationTool: [ DemoExecutorLinkController new ])
		label: 'Executor link'.
	(aPalette newConnectionCreationTool: [ DemoInformationLinkController new ])
		label: 'Information link'.
	aPalette newSeparator.
	(aPalette newCreationEntry: [ DemoScopeOfInterestController new ])
		label: 'Scope of Interest'