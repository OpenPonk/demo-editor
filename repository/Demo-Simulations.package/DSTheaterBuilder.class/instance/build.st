building
build
	| constructor |
	(constructor := DSSceneConstructor new)
		model: model;
		assignActors: self roleAssignments;
		actorLines: lines.
	constructor
		createViewElements;
		createControlBoxes.
	^ constructor