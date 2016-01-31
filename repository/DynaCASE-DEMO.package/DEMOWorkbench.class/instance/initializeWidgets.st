initialization
initializeWidgets
	topToolbar := self instantiate: DCWorkbenchToolbar.
	navigatorModel := self instantiate: DEMONavigator.
	tabManager := self newTabManager.
	formModel := self instantiate: DCDynamicForm.

	self focusOrder
		add: navigatorModel;
		add: tabManager;
		add: formModel