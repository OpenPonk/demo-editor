as yet unclassified
buildEditorForm: form
	| dropList |
	super buildEditorForm: form.
	
	(form addCheckbox: 'Lock width')
		state: (diagramController model isSizeLocked: model dcID);
		whenActivatedDo: [ self lockWidth: true.
			self createTransactionFrontLayer: self figure inView: diagramController view ];
		whenDeactivatedDo: [ self lockWidth: false.
			self removeTransactionFrontLayer.
			self layoutProcSteps.
			self refreshFigure ].
	
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