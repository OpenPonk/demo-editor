accessing
iconMapping
	^ {
	(OCDViewModel -> OPIcons current dcFsmDiagramIcon).
	(TransactionKind -> OPIcons current dcFsmInitialStateIcon).
	(ElementaryActorRole -> OPIcons current dcFsmInitialStateIcon).
	(CompositeActorRole -> OPIcons current dcFsmInitialStateIcon).
	(AggregateTransactionKind -> OPIcons current dcFsmInitialStateIcon).
	(InformationLink -> OPIcons current dcFsmTransitionIcon)
	}