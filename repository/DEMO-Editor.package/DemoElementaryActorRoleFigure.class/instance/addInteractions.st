as yet unclassified
addInteractions
	super addInteractions.
"	self @ self figuresFactory draggable."
	self @ RTDraggableSnapToGrid.
	self @ self figuresFactory resizable