as yet unclassified
deleteElementFromModelCommand: anElementModel
	(UIManager default
		confirm: 'Do you really want to delete this element and all its occurrences?')
		ifTrue: [ project deleteElement: anElementModel ]
		ifFalse: [ ^ self ]