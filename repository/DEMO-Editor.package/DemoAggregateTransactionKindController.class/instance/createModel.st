hooks
createModel
	^ super createModel
		name: 'aggregate transaction kind';
		isAggregate: true;
		yourself