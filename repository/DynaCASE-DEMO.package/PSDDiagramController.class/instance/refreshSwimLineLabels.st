userinterface
refreshSwimLineLabels
	| positionIndex xPosition labelElement slHeight labelText padding initiator executor transController prevController |
	view removeElements: swimLineLabels.
	swimLineLabels removeAll.
	slHeight := self class swimlineHeight.
	padding := self class swimlineLabelPadding.
	1 to: transControllers size do:
		[ :transIndex | 
		transController := transControllers at: transIndex.
		positionIndex := transController orderIndex.
		initiator := transController model initiatorRole.
		executor := transController model executorRole.
		labelText := 'A' , initiator dcID asString , ': initiator T'
			, transController model dcID.
		labelElement := (RTLabel new text: labelText) element.
		transIndex > 1
			ifTrue:
				[ prevController := transControllers at: transIndex - 1.
				prevController orderIndex = (positionIndex - 1)
					ifTrue:
						[ view removeElement: swimLineLabels last.
						swimLineLabels removeLast.
						prevController model executorRole = initiator
							ifTrue:
								[ labelText := 'A' , initiator dcID asString , ': initiator T'
									, prevController model dcID , Character cr asString , 'and initiator T'
									, transController model dcID.
								labelElement := (RTLabel new text: labelText) element ]
							ifFalse:
								[ labelText := 'ERROR - initiator and executor' , Character cr asString
									, 'roles incosistency'.
								labelElement := (RTLabel new
									text: labelText;
									color: Color red) element ] ] ].
		swimLineLabels add: labelElement.
		view add: labelElement.
		xPosition := (self class swimlineWidth / 2) negated + padding
			+ (labelElement width / 2).
		labelElement trachelShape
			translateTo: xPosition @ ((slHeight * positionIndex * 2 - slHeight) / 2).
		labelText := 'A' , executor dcID asString , ': executor T' , transController model dcID.
		labelElement := (RTLabel new text: labelText) element.
		swimLineLabels add: labelElement.
		view add: labelElement.
		xPosition := (self class swimlineWidth / 2) negated + padding
			+ (labelElement width / 2).
		labelElement trachelShape
			translateTo: xPosition @ ((slHeight * positionIndex * 2 + slHeight) / 2) ]