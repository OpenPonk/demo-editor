actions
openActors: aModel
	| actors |
	actors := self actorsFor: aModel.
	DemoCsvEditorUI
		open: 'Actors editor'
		loadBlock: [ DSRoleAssignmentsReader new toString: actors ]
		saveBlock: [ :text | 
			actors := DSRoleAssignmentsReader readStream: text readStream.
			self storage actorsAt: aModel uuid put: actors ]