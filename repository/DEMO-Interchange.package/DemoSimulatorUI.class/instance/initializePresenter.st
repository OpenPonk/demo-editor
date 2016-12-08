initialization
initializePresenter
	super initializePresenter.
	modelsList
		items: self models;
		whenSelectedItemChanged: [ :item | self showVersionsFor: item ].
	versionsList
		whenSelectedItemChanged: [ :item | self loadDataForVersion: item ].
	linesButton action: [ self openLines ].
	actorsButton action: [ self openActors ].
	scriptButton action: [ self openScript ].
	simulationButton action: [ self openSimulation ]