adding
addAsTargetFor: aController
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	aController createModel.
	diagramController controllers add: aController.
	aController attach.
	diagramController model add: aController model.
	self increaseNumberOfConnections.
	aController source increaseNumberOfConnections.