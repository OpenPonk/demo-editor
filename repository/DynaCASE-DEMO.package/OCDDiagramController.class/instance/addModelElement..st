as yet unclassified
addModelElement: aModelElement
	| controller |
	controller := self createController: aModelElement.
	controller diagramController: self.
	self controllers add: controller.
	(controller isKindOf: OPDirectionalRelationshipController)
		ifTrue: [ | fromModel toModel fromCtrl toCtrl |
			fromModel := aModelElement source.
			toModel := aModelElement target.
			fromCtrl := self controllers
				detect: [ :ctrl | ctrl model = fromModel ]
				ifNone: [ self addModelElement: fromModel ].
			toCtrl := self controllers
				detect: [ :ctrl | ctrl model = toModel ]
				ifNone: [ self addModelElement: toModel ].
			controller
				source: fromCtrl;
				target: toCtrl ]
		ifFalse: [ controller model: aModelElement ].
	controller attach.
	^ controller