as yet unclassified
removeLabels
	executorLabel view
		ifNotNil: [ 
			executorLabel remove.
			executorLabel := nil ].
	initiatorLabel view
		ifNotNil: [ 
			initiatorLabel remove.
			initiatorLabel := nil ]