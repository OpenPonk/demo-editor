as yet unclassified
connectBoxes: aCollection
	| causalLinks conditionalLinks types f |
	f := DSFiguresFactory new.
	causalLinks := model elements select: [ :each | each isKindOf: DemoCausalLink ].
	conditionalLinks := model elements
		select: [ :each | each isKindOf: DemoConditionalLink ].
	types := #(request promise execute state accept).
	causalLinks
		do: [ :aLink | 
			| from to fromF toA |
			aLink sourceTransaction
				ifNotNil: [ from := aCollection detect: [ :each | each model model = aLink sourceTransaction ].
					to := aCollection
						detect: [ :each | each model model = aLink destinationTransaction ].
					fromF := types indexOf: aLink sourceFact type.
					toA := types indexOf: aLink destinationAct type.
					view add: (f causalLinkFrom: (from buttons at: fromF) to: (to buttons at: toA)).
					toA = 1
						ifTrue: [ (from buttons at: fromF)
								when: DSCompleted
								do: [ :evt | self ensureTransactionHasActors: to ] ] ] ].
	conditionalLinks
		do: [ :aLink | 
			| from to fromF toA |
			aLink sourceTransaction
				ifNotNil: [ from := aCollection detect: [ :each | each model model = aLink sourceTransaction ].
					to := aCollection
						detect: [ :each | each model model = aLink destinationTransaction ].
					fromF := types indexOf: aLink sourceFact type.
					toA := types indexOf: aLink destinationAct type.
					view add: (f conditionalLinkFrom: (from buttons at: fromF) to: (to buttons at: toA)) ] ]