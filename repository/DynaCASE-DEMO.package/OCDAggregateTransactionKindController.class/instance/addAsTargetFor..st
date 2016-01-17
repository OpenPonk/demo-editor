as yet unclassified
addAsTargetFor: aController
	| newModel |
	self assert: (self canBeTargetFor: aController).
	aController target: self.
	aController diagramController: diagramController.
	newModel := aController createModel.
	aController model: newModel.
	diagramController model add: newModel.
	diagramController controllers add: aController.
	aController attach.