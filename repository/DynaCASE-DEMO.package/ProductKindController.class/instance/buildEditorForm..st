as yet unclassified
buildEditorForm: aForm
	(aForm addTextInput: 'Formulation')
		text: self model formulation;
		whenTextIsAccepted: [ :newValue | self model formulation: newValue ].
	(aForm addTextInput: 'ID')
		text: self model id;
		whenTextIsAccepted: [ :newValue | (self isIDUsed: newValue) ifFalse: [ self model id: newValue ] ]