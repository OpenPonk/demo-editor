as yet unclassified
createModel
	model ifNotNil: [ ^ self model ].
	model := self modelClass new.
	model
		source: source transactionController model dcID;
		sourceStep: source name;
		target: target transactionController model dcID;
		targetStep: target name.
	^ model