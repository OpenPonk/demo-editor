as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'DEMO ID')
		text: self model demoId asString;
		whenTextIsAccepted: [ :newValue | 
			self model demoId: newValue asNumber.
			self refreshFigure ].
	(aForm addTextInput: 'Name')
		text: self model name;
		whenTextIsAccepted: [ :newValue | 
			self model name: newValue.
			self refreshFigure ]