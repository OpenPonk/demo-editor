as yet unclassified
buildEditorForm: aForm
	super buildEditorForm: aForm.
	(aForm addTextInput: 'Scope of Interest')
		text: self model soiName;
		whenTextIsAccepted: [ :newValue | self model soiName: newValue ]