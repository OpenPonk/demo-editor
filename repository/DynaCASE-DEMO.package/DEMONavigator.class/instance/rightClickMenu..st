as yet unclassified
rightClickMenu: menu
	| el menuBuilder parentNode |
	tree hasSelectedItem
		ifFalse: [ ^ self ].
	menuBuilder := OPMenuBuilder new menu: menu.
	parentNode := tree selectedItem parentNode.
	el := tree selectedItem content.
	(el isKindOf: OPDiagram)
		ifTrue:
			[ menuBuilder addItem: 'Rename' action: [ self renameCommand: el ].
			menuBuilder addItem: 'Inspect' action: [ self inspectCommand: el ].
			menuBuilder addItem: 'Delete' action: [ self deleteDiagramCommand: el ] ].
	(el isKindOf: DEMOBasicElement)
		ifTrue:
			[ menuBuilder addItem: 'Insert into diagram' action: [ self addElementCommand: el ].
			menuBuilder addItem: 'Rename' action: [ self renameCommand: el ].
			menuBuilder addItem: 'Inspect' action: [ self inspectCommand: el ].
			parentNode
				ifNil: [ menuBuilder
						addItem: 'Delete from model'
						action: [ self deleteElementFromModelCommand: el ] ]
				ifNotNil:
					[ menuBuilder
						addItem: 'Delete from diagram'
						action: [ self deleteElementCommand: el fromDiagram: parentNode content ] ] ]