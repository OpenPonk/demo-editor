as yet unclassified
buildEditorForm: form
	| dropList |
	super buildEditorForm: form.
	
	(form addCheckbox: 'Lock width')
		state: (diagramController model isSizeLocked: model dcID);
		whenActivatedDo: [ self lockWidth: true ];
		whenDeactivatedDo: [ self lockWidth: false ].
	
	dropList := (form addDroplist: 'Initiator')
		items: diagramController model projectModel elementaryActorRoles asArray;
		displayBlock: [ :each | each id asString , ' - ' , each name asString ].
	model initiatorRole ifNotNil: [ dropList setSelectedItem: model initiatorRole ].
	dropList whenSelectedItemChanged: [ :newValue | 
		model initiatorRole: newValue ].
	
	dropList := (form addDroplist: 'Executor')
		items: diagramController model projectModel elementaryActorRoles asArray;
		displayBlock: [ :each | each id asString , ' - ' , each name asString ].
	model executorRole ifNotNil: [ dropList setSelectedItem: model executorRole ].
	dropList whenSelectedItemChanged: [ :newValue | 
		model executorRole: newValue ].