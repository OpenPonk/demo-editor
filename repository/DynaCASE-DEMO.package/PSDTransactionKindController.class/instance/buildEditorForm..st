as yet unclassified
buildEditorForm: form
	super buildEditorForm: form.
	(form addDroplist: 'Initiator')
		items: diagramController model projectModel elementaryActorRoles asArray;
		displayBlock: [ :each | each id asString , ' - ' , each name asString ];
		setSelectedItem: model initiatorRole;
		whenSelectedItemChanged: [ :newValue | 
			model initiatorRole: newValue.
			"self refreshFigure" ].
	(form addDroplist: 'Executor')
		items: diagramController model projectModel elementaryActorRoles asArray;
		displayBlock: [ :each | each id asString , ' - ' , each name asString ];
		setSelectedItem: model executorRole;
		whenSelectedItemChanged: [ :newValue | 
			model executorRole: newValue.
			"self refreshFigure" ].