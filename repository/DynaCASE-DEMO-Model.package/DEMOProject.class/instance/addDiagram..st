adding
addDiagram: aDiagram
	aDiagram projectModel: model.
	super addDiagram: aDiagram.
	self sortDiagrams