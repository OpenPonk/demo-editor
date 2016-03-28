as yet unclassified
getBlockProducingPath
	^ [ :fromPoint :toPoint | 
	| midY |
	middle ifNil: [ midY := toPoint y / 2 + (fromPoint y / 2) ] ifNotNil: [ midY := middle ].
	Array
		with: fromPoint
		with: fromPoint x @ midY
		with: toPoint x @ midY
		with: toPoint ]