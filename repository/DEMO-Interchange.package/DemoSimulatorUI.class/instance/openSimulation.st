actions
openSimulation
	| theater w builder |
	(builder := DSTheaterBuilder new) model: model.
	lines ifNotNil: [ "builder linesFromString: lines" ].
	actors ifNotNil: [ builder roleAssignmentsFromString: actors ].
	theater := builder build.
	theater enableControl.
	theater view canvas camera scale: 0.7.
	theater view @ RTEmptyViewContextInteraction @ RTDraggableView.
	w := theater play.
	w extent: 800 @ 800