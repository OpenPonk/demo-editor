hooks
createModel
	^ super createModel
		isAggregate: true;
		yourself