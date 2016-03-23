as yet unclassified
createLink: aController
	| newModel |
	aController target: aController source.
	aController source: self.
	newModel := aController createModel.
	aController model: newModel.
	diagramController model add: newModel