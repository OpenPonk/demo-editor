adding
addAsTargetFor: aController
	super addAsTargetFor: aController.
	self addProcessStepsTo: aController.
	transControllers add: aController.
	showAllProcSteps ifTrue: [ aController showAllProcessSteps ]
		ifFalse: [ aController showOnlyConnectedProcessSteps ]