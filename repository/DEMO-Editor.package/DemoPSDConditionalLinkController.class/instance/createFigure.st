hooks
createFigure
	^ DemoFiguresFactory new
		conditionalLinkFrom: self sourcePortController figure
		to: self targetPortController figure