hooks
createFigure
	^ DemoFiguresFactory new
		causalLinkFrom: self sourceTransactionController figure
		to: self targetTransactionController figure