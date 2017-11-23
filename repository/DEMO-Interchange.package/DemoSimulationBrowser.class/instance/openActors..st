actions
openActors: aModel
	| actors |
	actors := self actorsFor: aModel.
	DemoCsvEditorUI
		open: 'Actors editor'
		loadBlock: [ DSRoleAssignmentsReader new toString: actors ]
		saveBlock: [ :text | 
			self storage
				actorsAt: aModel uuid
				put: (DSRoleAssignmentsReader readStream: text readStream) ]