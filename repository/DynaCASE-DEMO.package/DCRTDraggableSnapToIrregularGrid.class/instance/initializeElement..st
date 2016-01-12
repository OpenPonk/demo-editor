hooks
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
			d := element encompassingRectangle topLeft + shift.
			d := d + (element view canvas camera distanceFromPixelToSpace: event step).
			totalD := totalD + d.
			d := (cellWidth * (totalD x / cellWidth) rounded)
				@ (cellHeight * (totalD y / cellHeight) rounded).
			totalD := totalD - d.
			d := d - element encompassingRectangle topLeft - shift.
			t translateBy: d.
			event signalUpdate.
			translationCallbackBlock 
				ifNotNil: [ translationCallbackBlock value: d ] ]