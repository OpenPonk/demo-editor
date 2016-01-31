as yet unclassified
rightClickMenu: menu
	| el menuBuilder |
	tree hasSelectedItem
		ifFalse: [ ^ self ].
	menuBuilder := DCMenuBuilder new menu: menu.
	el := tree selectedItem content.
	(el isKindOf: DCDiagram)
		ifTrue:
			[ menuBuilder addItem: 'Rename' action: [ self renameCommand: el ].
			menuBuilder addItem: 'Inspect' action: [ self inspectCommand: el ].
			menuBuilder addItem: 'Delete' action: [ self deleteDiagramCommand: el ] ].
	(el isKindOf: DEMOBasicElement)
		ifTrue: [ menuBuilder addItem: 'Insert' action: [ self addElementCommand: el ].
			menuBuilder addItem: 'Rename' action: [ self renameCommand: el ].
			menuBuilder addItem: 'Inspect' action: [ self inspectCommand: el ].
			menuBuilder addItem: 'Delete' action: [ self deleteElementCommand: el ] ]