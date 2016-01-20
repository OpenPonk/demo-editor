ui hooks
buildEditorForm: aForm
	super buildEditorForm: aForm.
	(aForm addTextInput: 'ID')
		text: self model id;
		whenTextIsAccepted: [ :newValue | (self isIDUsed: newValue) ifFalse: [ self model id: newValue ] ]