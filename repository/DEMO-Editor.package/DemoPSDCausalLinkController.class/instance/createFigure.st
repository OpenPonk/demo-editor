hooks
createFigure
	^ DemoFiguresFactory new
		causalLinkFrom: self sourcePortController figure
		to: self targetPortController figure