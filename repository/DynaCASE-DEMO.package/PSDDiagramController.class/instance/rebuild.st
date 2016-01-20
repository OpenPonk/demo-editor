userinterface
rebuild
	super rebuild.
	transControllers do: [ :aController | self createLinksForTrans: aController ].
	self toggleProcessSteps.
	self createSwimLines.
	self refreshSwimLines.
	self view canvas camera focusOnCenter