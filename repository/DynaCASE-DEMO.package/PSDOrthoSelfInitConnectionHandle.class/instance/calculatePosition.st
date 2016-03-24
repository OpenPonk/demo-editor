as yet unclassified
calculatePosition
	| x y to from |
	to := edge to position.
	from := edge from position.
	y := to y / 2 + (from y / 2).
	handler middle ifNil: [ x := to x / 2 + (from x / 2) ] ifNotNil: [ x := edge to position x - handler middle ].
	^ x @ y