as yet unclassified
removeLabels: aView
	executorLabel view
		ifNotNil: [ 
			executorLabel remove.
			executorLabel := nil ].
	initiatorLabel view
		ifNotNil: [ 
			initiatorLabel remove.
			initiatorLabel := nil ]