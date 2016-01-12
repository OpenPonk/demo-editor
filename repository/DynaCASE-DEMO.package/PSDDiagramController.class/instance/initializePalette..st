ui hooks
initializePalette: aPalette

	aPalette addItem
		label: 'Toggle process steps';
		icon: nil;
		action: [ self toggleProcessSteps ].

	aPalette newSeparator.

	(aPalette newConnectionCreationTool: [ PSDInitiationLinkController new ])
		label: 'Initiation link';
		icon: nil.
	(aPalette newConnectionCreationTool: [ PSDWaitingLinkController new ])
		label: 'Waiting link';
		icon: nil