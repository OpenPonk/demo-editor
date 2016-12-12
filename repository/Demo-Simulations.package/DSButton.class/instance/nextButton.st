accessing
nextButton
	| selfIndex |
	selfIndex := owner buttons indexOf: self.
	^ selfIndex = owner buttons size
		ifTrue: [ nil ]
		ifFalse: [ owner buttons at: selfIndex + 1 ]