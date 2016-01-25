accessing
iconMapping
	^ { 
		OCDViewModel -> DCIcons current dcFsmDiagramIcon.
		TransactionKind -> DCIcons current dcFsmInitialStateIcon.
		ElementaryActorRole -> DCIcons current dcFsmInitialStateIcon. 
		CompositeActorRole -> DCIcons current dcFsmInitialStateIcon.
		AggregateTransactionKind -> DCIcons current dcFsmInitialStateIcon
	 }