adding
addAsTargetFor: aController
	| newModel |
	self assert: (self canBeTargetFor: aController).
	aController diagramController: self.
	newModel := aController createModel.
	self model add: newModel.
	aController model: newModel.
	self controllers add: aController.
	aController attach