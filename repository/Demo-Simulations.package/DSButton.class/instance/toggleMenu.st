as yet unclassified
toggleMenu
	| menu |
	ownedElements
		ifNotEmpty: [ ownedElements last remove.
			ownedElements removeLast.
			self update.
			^ self ].
	menu := DSButtonMenu basicNew
		model: self model;
		initialize.
	menu enabled.
	self add: menu.
	view add: menu.
	(RTConstraint on: menu background: self)
		outer;
		stick.
	self view signalUpdate