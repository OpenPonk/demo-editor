as yet unclassified
createLink: aController
	| newModel |
	newModel := aController createModel.
	aController model: newModel.
	diagramController model add: newModel