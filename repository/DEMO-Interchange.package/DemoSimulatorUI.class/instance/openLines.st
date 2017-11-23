actions
openLines
	model ifNil: [ ^ UIManager default message: 'No version has been selected yet.' ].
	lines := DemoSimulationDataStorage default linesFor: model uuid.
	DemoCsvEditorUI
		open: 'Lines editor'
		loadBlock: [ DSLinesCsvConverter new toString: lines ]
		saveBlock: [ :text | 
			lines := DSLinesCsvConverter new fromString: text.
			DemoSimulationDataStorage default linesAt: model uuid put: lines ]