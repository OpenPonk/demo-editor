as yet unclassified
createModel
	model ifNotNil: [ ^ self model ].
	model := self modelClass new.
	model
		source: source model dcID;
		target: target model dcID.
	^ model