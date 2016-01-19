as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'Multiplicity')
		text: self model multiplicity;
		whenTextIsAccepted: [ :newValue | self model multiplicity: newValue ]