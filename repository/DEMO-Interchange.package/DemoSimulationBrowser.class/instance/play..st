actions
play: aVersion
	| theater w builder model |
	model := self modelForVersion: aVersion.
	(builder := DSTheaterBuilder new) model: model.
	(self storage linesFor: aVersion id) ifNotNil: [ :lines | "" ].
	(self storage actorsFor: aVersion id)
		ifNotNil: [ :actors | builder roleAssignmentsFromString: actors ].
	theater := builder build.
	theater enableControl.
	w := theater play.
	w extent: 800 @ 800