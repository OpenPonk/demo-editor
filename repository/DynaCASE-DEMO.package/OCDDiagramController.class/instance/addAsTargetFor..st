as yet unclassified
addAsTargetFor: aController
	| newModel |
	self assert: (self canBeTargetFor: aController).
	aController diagramController: self diagramController.
	newModel := aController createModel.
	self model add: newModel.
	aController model: newModel.
	self controllers add: aController.
	aController attach.
	aController figure @ (RTDraggableSnapToGrid new gridSize: gridSize).
	aController addMovedCallback.
	aController moved.
	self view signalUpdate