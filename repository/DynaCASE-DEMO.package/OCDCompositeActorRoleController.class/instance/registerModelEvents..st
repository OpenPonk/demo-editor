as yet unclassified
registerModelEvents: aModel
	aModel
		when: DCElementRemoved
		do: [ :event | 
			subElements removeAllSuchThat: [ :each | each model = event element ].
			self diagramController removeControllerOf: event element ].
	aModel
		when: DCElementChanged
		do: [ :event | 
			aModel owner isNotNil & figure isNotNil
				ifTrue: [ self refreshFigure ] ]