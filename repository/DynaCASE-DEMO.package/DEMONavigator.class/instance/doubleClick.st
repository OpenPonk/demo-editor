as yet unclassified
doubleClick
	| selectedItem |
	tree hasSelectedItem
		ifFalse: [ ^ self ].
	selectedItem := tree selectedItem content.
	(selectedItem isKindOf: DCModelObject)
		ifTrue:
			[ (selectedItem isKindOf: DCDiagram)
				ifTrue: [ self openCommand: selectedItem ]
				ifFalse: [ self addElementCommand: selectedItem ] ]