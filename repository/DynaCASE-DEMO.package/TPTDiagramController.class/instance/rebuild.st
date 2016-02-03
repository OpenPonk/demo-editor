userinterface
rebuild
	super rebuild.
	self view add: transCol; add: prodsCol; add: tableBox.
	tableBox @ (RTLabelled above text: (self model name); color: Color black).
	
	trans := self controllers
		select: [ :each | each isKindOf: TPTTransactionKindController ]
		thenCollect: #figure.
	prods := self controllers
		select: [ :each | each isKindOf: TPTProductKindController ]
		thenCollect: #figure.
	
	self repaint.
	self updateView.
	self view canvas camera focusOnCenter	