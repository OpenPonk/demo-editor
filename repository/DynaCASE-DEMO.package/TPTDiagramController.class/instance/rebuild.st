userinterface
rebuild
	super rebuild.
	self view add: transCol; add: prodsCol; add: tableBox.
	tableBox @ (RTLabeled above text: (self model name); color: Color black).
	self layoutElements.
	self updateView.
	self view canvas camera focusOnCenter	