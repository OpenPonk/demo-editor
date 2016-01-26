as yet unclassified
iconMapping
	^ {
	(PSDViewModel -> DCIcons current dcFsmDiagramIcon).
	(TransactionKind -> DCIcons current dcFsmInitialStateIcon).
	(ProcessLink -> DCIcons current dcFsmTransitionIcon)
	}