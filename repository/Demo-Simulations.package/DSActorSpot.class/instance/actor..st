as yet unclassified
actor: anActor
	actor
		ifNotNil: [ ownedElements remove: actor.
			actor spot: nil ].
	actor := anActor.
	actor spot: self.
	actor translateTo: self position.
	self add: actor