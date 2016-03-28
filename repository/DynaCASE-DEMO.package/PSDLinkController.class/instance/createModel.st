as yet unclassified
createModel
	model ifNotNil: [ ^ self model ].
	model := self modelClass new.
	model
		source: source transactionController model;
		sourceStep: source name;
		target: target transactionController model;
		targetStep: target name.
	^ model