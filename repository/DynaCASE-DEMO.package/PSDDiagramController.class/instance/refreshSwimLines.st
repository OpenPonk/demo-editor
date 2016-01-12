userinterface
refreshSwimLines
	| position sl1 sl2 slHeight |
	slHeight := self class swimlineHeight.
	transControllers
		inject: 1
		into:
			[ :slIndex :aController | 
			sl1 := swimLines at: slIndex.
			sl2 := swimLines at: slIndex + 1.
			position := aController orderIndex.
			sl1 trachelShape translateTo: 0 @ ((slHeight * position * 2) - slHeight / 2).
			sl2 trachelShape translateTo: 0 @ ((slHeight * position * 2) + slHeight / 2).
			slIndex + 2].
	transControllers sort: [ :a :b | a figure position y < b figure position y ].
	self refreshSwimLineLabels