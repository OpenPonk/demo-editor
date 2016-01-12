as yet unclassified
connectWithView: aView
	(aView hasAttribute: self className)
		ifFalse: [ self setupView: aView ].

	aView
		when: TRResizeCanceled
		do: [ :event | 
			TRPlatform current showTemporaryCursor: nil.
			event shape = element trachelShape
				ifFalse: [ self removeHandles ] ]