accessing
iconMapping
	^ {
	(PSDViewModel -> OPIcons current dcFsmDiagramIcon).
	(TransactionKind -> OPIcons current dcFsmInitialStateIcon).
	(ProcessLink -> OPIcons current dcFsmTransitionIcon)
	}