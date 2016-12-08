initialization
initializeWidgets
	(modelsList := self newList)
		displayBlock: [ :item | item label , ' | ' , item id asString ];
		autoDeselect: false.
	(versionsList := self newList)
		displayBlock: [ :item | item version asString , ' | ' , item label , ' | ' , item id asString ];
		autoDeselect: false.
	linesButton := self newButton label: 'Lines'.
	actorsButton := self newButton label: 'Actors'.
	scriptButton := self newButton label: 'Script Simulation'.
	simulationButton := self newButton label: 'Open Simulation'