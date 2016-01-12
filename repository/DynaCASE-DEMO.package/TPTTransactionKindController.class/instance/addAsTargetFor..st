adding
addAsTargetFor: aProdKindCtrl
	| prodKind |
	self assert: (self canBeTargetFor: aProdKindCtrl).
	
	prodKind := aProdKindCtrl createModel.
	self model add: prodKind.
	prodKind dcID: (self model dcID copy at:1 put: $P; yourself).
	
	aProdKindCtrl
		diagramController: self diagramController;
		model: prodKind.
		
	self diagramController controllers add: aProdKindCtrl.
	self diagramController model add: prodKind.
	aProdKindCtrl attach.