userinterface
rebuild
	"super rebuild."
	"transCol := (RTBox new borderColor: Color black; color: (Color white alpha: 0)) element updateEdgesOFF.
	prodsCol := (RTBox new borderColor: Color black; color: (Color white alpha: 0)) element updateEdgesOFF.
	tableBox := (RTBox new color: (Color white alpha: 0)) element updateEdgesOFF.

	self view add: transCol; add: prodsCol; add: tableBox.
	
	tableBox @ (RTLabelled above text: (self model name); color: Color black)."

	super rebuild.

	self view add: transCol; add: prodsCol; add: tableBox.
	tableBox @ (RTLabelled above text: (self model name); color: Color black).
	
	trans := self controllers
		select: [ :each | each isKindOf: TPTTransactionKindController ]
		thenCollect: #figure.
	prods := self controllers
		select: [ :each | each isKindOf: TPTProductKindController ]
		thenCollect: #figure.

	self updateView.
	self repaint.
	self view canvas camera focusOnCenter	