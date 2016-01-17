as yet unclassified
initializePalette: aPalette

	(aPalette newCreationTool: [ OCDElementaryActorRoleController new ])
		label: 'Elementary actor role';
		icon: nil.
	(aPalette newCreationTool: [ OCDCompositeActorRoleController new ])
		label: 'Composite actor role';
		icon: nil.
		
	aPalette newSeparator.
		
	(aPalette newCreationTool: [ OCDTransactionKindController new ])
		label: 'Transaction kind';
		icon: nil.
	(aPalette newCreationTool: [ OCDAggregateTransactionKindController new ])
		label: 'Aggregate trans kind';
		icon: nil.
		
	aPalette newSeparator.
	
	(aPalette newConnectionCreationTool: [ OCDInitiatorLinkController new ])
		label: 'Initiator link';
		icon: nil.
	(aPalette newConnectionCreationTool: [ OCDExecutorLinkController  new ])
		label: 'Executor link';
		icon: nil.
	(aPalette newConnectionCreationTool: [ OCDInformationLinkController new ])
		label: 'Information link';
		icon: nil.