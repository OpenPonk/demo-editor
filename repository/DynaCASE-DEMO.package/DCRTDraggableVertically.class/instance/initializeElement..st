as yet unclassified
initializeElement: element
	| totalD |
	totalD := 0 @ 0.
	element when: TRMouseDragStart do: [ :event | totalD := 0 @ 0 ].
	element
		when: TRMouseDragging
		do:
			[ :event | 
			| d t |
			t := RTGroup withAll: groupToDrag.
			(t includes: element)
				ifFalse: [ t add: element ].
			d := element encompassingRectangle topLeft.
			d := d + (element view canvas camera distanceFromPixelToSpace: event step).
			totalD := totalD + d.
			d := gridSize * ((totalD x / gridSize) rounded @ (totalD y / gridSize) rounded).
			totalD := totalD - d.
			d := d - element encompassingRectangle topLeft.
			d := (0 @ d y).
			t translateBy: d.
			event signalUpdate ]