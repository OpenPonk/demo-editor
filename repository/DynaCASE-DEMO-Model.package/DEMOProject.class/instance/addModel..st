adding
addModel: aDiagram
	aDiagram projectModel: model.
	(models anySatisfy: [ :each | each uuid = aDiagram uuid ])
		ifFalse: [ super addModel: aDiagram.
			self sortProjectTree ]