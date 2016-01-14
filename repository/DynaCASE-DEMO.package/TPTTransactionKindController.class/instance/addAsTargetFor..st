adding
addAsTargetFor: aProdKindCtrl
	| prodKind |
	self assert: (self canBeTargetFor: aProdKindCtrl).
	
	aProdKindCtrl diagramController: self diagramController.
	prodKind := aProdKindCtrl createModel.
	self model add: prodKind.
	aProdKindCtrl model: prodKind.
		
	self diagramController controllers add: aProdKindCtrl.
	self diagramController model add: prodKind.
	aProdKindCtrl attach.