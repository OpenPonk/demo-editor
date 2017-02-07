initialization
initializeWidgets
	topToolbar := self instantiate: OPWorkbenchToolbar.
	navigatorModel := self instantiate: DEMONavigator.
	tabManager := self newTabManager.
	formModel := self instantiate: OPDynamicForm.

	self focusOrder
		add: navigatorModel;
		add: tabManager;
		add: formModel