accessing
findProcessStep: aProcessStep forTransaction: aTransaction isUpper: isUpper isAct: isAct
	^ (transControllers detect: [ :each | each model = aTransaction ]) processSteps
		detect:
			[ :each | (each name = aProcessStep and: each isUpper = isUpper) and: each isAct = isAct ]