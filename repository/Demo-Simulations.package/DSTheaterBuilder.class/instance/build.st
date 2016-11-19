building
build
	| constructor |
	(constructor := DSTheaterConstructor new)
		model: model;
		assignActors: self roleAssignments;
		actorLines: lines.
	constructor
		createViewElements;
		createControlBoxes.
	^ constructor