as yet unclassified
createModel
	model ifNotNil: [ ^ self model ].
	model := self modelClass new.
	model
		source: source transactionController model id;
		sourceStep: source name;
		target: target transactionController model id;
		targetStep: target name.
		
	^ model