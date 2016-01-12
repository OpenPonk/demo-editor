userinterface
rebuild	
	controllers := nil.
	transControllers := OrderedCollection new.
	self view cleanAll.
	
	self model transactionKinds
		do: [ :each | | transController |
			transController := (self addModelElement: each).
			self addProcessStepsTo: transController.
			transControllers add: transController ].
	
	self layoutTransControllers.
	transControllers do: [ :aController | self createLinksForTrans: aController ].
	self toggleProcessSteps.
	
	self createSwimLines.
	self refreshSwimLines.
	
	self view canvas camera focusOnCenter