as yet unclassified
doubleClick
	| selectedItem |
	tree hasSelectedItem
		ifFalse: [ ^ self ].
	selectedItem := tree selectedItem content.
	(selectedItem isKindOf: OPModelObject)
		ifTrue:
			[ (selectedItem isKindOf: OPDiagram)
				ifTrue: [ self openCommand: selectedItem ]
				ifFalse: [ self addElementCommand: selectedItem ] ]