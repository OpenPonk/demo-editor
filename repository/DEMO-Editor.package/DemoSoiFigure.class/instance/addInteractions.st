rendering
addInteractions
	super addInteractions.
	self @ self figuresFactory draggable.
	self @ self figuresFactory resizable.
	self pushBack.
	(self view hasAttribute: RTGridView name)
		ifTrue: [ (self view attributeAt: RTGridView name) pushBack ]