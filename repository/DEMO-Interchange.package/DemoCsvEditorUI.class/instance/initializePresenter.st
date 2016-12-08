initialization
initializePresenter
	super initializePresenter.
	saveButton action: [ self saveContent ].
	discardButton action: [ self loadContent ]