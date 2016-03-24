as yet unclassified
getBlockProducingPath
	^ [ :fromPoint :toPoint | 
	| midX |
	middle ifNil: [ midX := toPoint x / 2 + (fromPoint x / 2) ] ifNotNil: [ midX := middle ].
	Array
		with: fromPoint
		with: fromPoint + (0 @ 20)
		with: (toPoint x - midX) @ (fromPoint y + 20)
		with: (toPoint x - midX) @ (toPoint y - 20)
		with: toPoint + (0 @ -20)
		with: toPoint ]