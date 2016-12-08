actions
openScript
	script
		ifNil: [ ^ UIManager default
				message: 'No lines have been assigned yet, open the simulation first.' ].
	DemoCsvEditorUI
		open: 'Script editor'
		loadBlock: [ script ]
		saveBlock: [ :text | 
			script := text.
			DemoSimulationDataStorage default scriptAt: model uuid put: text ]