accessing
figuresFactory
	^ figuresFactory ifNil: [ figuresFactory := DemoFiguresFactory new ]