userinterface
toggleProcessSteps
	showAllProcSteps
		ifTrue: [ transControllers do: [ :each | each showOnlyConnectedProcessSteps ].
			showAllProcSteps := false ]
		ifFalse: [ transControllers do: [ :each | each showAllProcessSteps ].
			showAllProcSteps := true ].
	self view signalUpdate