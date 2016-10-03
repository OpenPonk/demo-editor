as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'Name')
		text: self figure model;
		whenTextIsAccepted: [ :newValue | self figure updateFrom: newValue ]