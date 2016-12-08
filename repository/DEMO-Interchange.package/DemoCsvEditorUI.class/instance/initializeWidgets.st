initialization
initializeWidgets
	textEditor := self newText
		autoAccept: true.
	saveButton := self newButton label: 'Save'.
	discardButton := self newButton label: 'Discard changes'