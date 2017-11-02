actions
openLines: aModel
	| lines |
	lines := (self storage linesFor: aModel id) ifNil: [ '' ].
	DemoCsvEditorUI
		open: 'Lines editor'
		loadBlock: [ DSLinesStorage new toString: lines ]
		saveBlock: [ :text | 
			lines := DSLinesStorage new fromString: text.
			self storage linesAt: aModel id put: lines ]