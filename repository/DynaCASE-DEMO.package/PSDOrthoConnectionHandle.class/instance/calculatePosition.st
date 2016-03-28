as yet unclassified
calculatePosition
	| x y to from |
	to := edge to position.
	from := edge from position.
	x := to x / 2 + (from x / 2).
	handler middle ifNil: [ y := to y / 2 + (from y / 2) ] ifNotNil: [ y := handler middle ].
	^ x @ y