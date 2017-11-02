actions
openActors: aModel
	| actors |
	actors := self storage actorsFor: aModel id.
	actors
		ifNil: [ ^ UIManager default
				message: 'No actors have been assigned yet, open the simulation first.' ].
	DemoCsvEditorUI
		open: 'Actors editor'
		loadBlock: [ actors ]
		saveBlock: [ :text | 
			actors := text.
			DemoSimulationDataStorage default actorsAt: aModel id put: text ]