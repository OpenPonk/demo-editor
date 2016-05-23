as yet unclassified
openEditorOn: aDiagram
	| editor tab plugin widget |
	(self projectController hasDiagram: aDiagram)
		ifTrue: [ ^ self ].
	(editor := DCEditor new) workbench: self.
	plugin := pluginRegistry pluginFor: aDiagram.
	editor plugin: plugin.
	tab := self newTab.
	widget := editor buildWithSpec asWidget.
	editor owner: tab.
	editor openModel: aDiagram.
	aDiagram whenChanged: [ tab label: aDiagram name ].
	editor paletteModel rebuildWidget.
	tab
		label: aDiagram name;
		icon: plugin icon;
		retrievingBlock: [ widget ];
		whenTabSelected: [ topToolbar activeEditor: editor.
			selectedDiagramController := editor diagramController ];
		whenBuiltDo: [ :w | w widget when: #tabDeleted send: #tabDeleted to: editor ].
	tabManager addTab: tab.
	tab selected: true; tabSelected