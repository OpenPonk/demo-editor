private
connectWithView: aView
	(aView hasAttribute: self className)
		ifFalse: [ self setupView: aView ].
	aView canvas eventOverseer
		when: TRMouseLeftClick
		do:
			[ :event | 
			(event element = edge) not & isActive
				ifTrue: [ self removeHandle ] ].
	aView canvas eventOverseer
		when: TRMouseDragStart
		do: [ :event |
			handle ifNotNil: [ 
			(event element = handle element) not & isActive
				ifTrue: [ self removeHandle ] ] ]