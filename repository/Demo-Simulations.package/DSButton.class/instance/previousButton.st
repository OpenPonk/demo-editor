as yet unclassified
previousButton
	| selfIndex |
	selfIndex := owner buttons indexOf: self.
	^ selfIndex = 1
		ifTrue: [ nil ]
		ifFalse: [ owner buttons at: selfIndex - 1 ]