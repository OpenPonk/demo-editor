hooks
createModel
	model ifNotNil: [ ^ self model ].
	model := self modelClass new.
	model
		source: source model;
		target: target model.
	^ model