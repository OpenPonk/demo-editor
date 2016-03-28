as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'Scope of Interest')
		text: model soiName;
		whenTextIsAccepted: [ :newValue | model soiName: newValue ]