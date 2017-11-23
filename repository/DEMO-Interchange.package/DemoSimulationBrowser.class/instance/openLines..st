actions
openLines: aModel
	DemoCsvEditorUI
		open: 'Lines editor'
		loadBlock: [ DSLinesCsvConverter new toString: (self linesFor: aModel) ]
		saveBlock: [ :text | self storage linesAt: aModel uuid put: (DSLinesCsvConverter new fromString: text) ]