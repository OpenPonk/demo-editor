building
build
	| constructor |
	(constructor := DSTheaterConstructor new)
		model: model;
		assignActors: roleAssignments;
		actorLines: lines.
	constructor
		createViewElements;
		createControlBoxes.
	^ constructor