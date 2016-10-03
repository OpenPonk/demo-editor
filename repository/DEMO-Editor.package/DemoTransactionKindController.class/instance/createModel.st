hooks
createModel
	^ super createModel
		name: 'transaction kind';
		isAggregate: false;
		yourself