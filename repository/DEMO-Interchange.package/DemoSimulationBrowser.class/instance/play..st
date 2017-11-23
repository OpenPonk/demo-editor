actions
play: aModel
	| theater w builder |
	(builder := DSTheaterBuilder new) model: aModel.
	builder lines: (self linesFor: aModel).
	builder roleAssignments: (self actorsFor: aModel).
	theater := builder build.
	theater enableControl.
	w := theater play.
	w extent: 800 @ 800