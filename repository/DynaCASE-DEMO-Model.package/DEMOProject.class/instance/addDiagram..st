adding
addDiagram: aDiagram
	aDiagram projectModel: model.
	(diagrams anySatisfy: [ :each | each dcID = aDiagram dcID ])
		ifFalse: [ super addDiagram: aDiagram.
			self sortProjectTree ]