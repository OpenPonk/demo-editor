as yet unclassified
addInteractions
	self
		when: TRMouseEnter
		do: [ :e | 
			self isEnabled
				ifTrue: [ e element attributeAt: #hover put: true.
					e element hover ] ].
	self
		when: TRMouseLeave
		do: [ :e | 
			(e element hasAttribute: #hover)
				ifTrue: [ e element removeAttributeAt: #hover.
					e element enabled ] ].
	self when: TRMouseLeftClick do: [ :e | e element cycle ]

	"	self
		when: TRMouseEnter
		do: [ :e | 
			(e element hasAttribute: #hover)
				ifTrue: [ (e element attributeAt: #hover) ifNotNil: [ :x | x view ifNotNil: [ x remove ] ] ].
			e element
				attributeAt: #hover
				put:
					(RTBox new
						size: 40;
						color: (Color black alpha: 0.2);
						element).
			(e element attributeAt: #hover) translateTo: e element position.
			self view add: (e element attributeAt: #hover).
			self view signalUpdate ].
	self
		when: TRMouseLeave
		do: [ :e | 
			(e element hasAttribute: #hover)
				ifTrue: [ (e element attributeAt: #hover) ifNotNil: [ :x | x view ifNotNil: [ x remove ] ] ].
			self view signalUpdate ]."

	"	self when: TRMouseRightClick do: [ :e | self toggleMenu ]"