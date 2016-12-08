actions
openLines
	model ifNil: [ ^ UIManager default message: 'No version has been selected yet.' ].
	lines := DemoSimulationDataStorage default linesFor: model uuid.
	DemoCsvEditorUI
		open: 'Lines editor'
		loadBlock: [ DSLinesStorage new toString: lines ]
		saveBlock: [ :text | 
			lines := DSLinesStorage new fromString: text.
			DemoSimulationDataStorage default linesAt: model uuid put: lines ]