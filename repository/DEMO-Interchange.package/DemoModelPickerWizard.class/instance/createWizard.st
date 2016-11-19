instance creation
createWizard
	| wizard pane modelsList modelVersionsList |
	wizard := WizardControl new.
	pane := WizardSinglePane new.
	modelsList := ListPart new
		inGroupboxNamed: 'Models';
		list: self modelsList.
	modelVersionsList := ListPart new
		inGroupboxNamed: 'Versions';
		list: #().
	modelsList
		callback: [ :index | 
			index isZero
				ifTrue: [ modelVersionsList list: #() ]
				ifFalse: [ modelVersionsList list: (self versionsListFor: index) ] ].
	pane column: modelsList associatedTo: #modelSelection.
	pane column: modelVersionsList associatedTo: #versionSelection.
	pane condition: [ :data | data @ #modelSelection > 0 ] named: 'model not selected'.
	pane condition: [ :data | data @ #versionSelection > 0 ] named: 'version not selected'.
	modelsList
		listWidth: 200;
		listHeight: 200.
	modelVersionsList
		listWidth: 200;
		listHeight: 200.
	pane name: 'Select model'.
	wizard addPane: pane.
	^ wizard