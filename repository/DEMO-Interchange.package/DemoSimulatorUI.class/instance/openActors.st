actions
openActors
	actors
		ifNil: [ ^ UIManager default
				message: 'No actors have been assigned yet, open the simulation first.' ].
	DemoCsvEditorUI
		open: 'Actors editor'
		loadBlock: [ actors ]
		saveBlock: [ :text | 
			actors := text.
			DemoSimulationDataStorage default actorsAt: model uuid put: text ]