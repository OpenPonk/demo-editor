accessing
iconMapping
	^ {
	(TPTViewModel -> OPIcons current dcFsmDiagramIcon).
	(TransactionKind -> OPIcons current dcFsmInitialStateIcon)
	}