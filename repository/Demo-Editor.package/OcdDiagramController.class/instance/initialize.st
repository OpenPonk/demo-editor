initialization
initialize
	super initialize.
	modelToControllerMapping
		at: OcdSoi put: OcdSoiController;
		at: OcdTransaction put: OcdTransactionController