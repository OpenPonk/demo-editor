as yet unclassified
addInteractions
	super addInteractions.
	self core
		addCallback:
			(TRTranslationCallback
				block: [ :aShape :aStep | 
					initiatorSpot translateBy: aStep.
					executorSpot translateBy: aStep ])