as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'Formulation')
		text: self model formulation;
		whenTextIsAccepted: [ :newValue | self model formulation: newValue ].