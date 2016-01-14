accessing
addModelElement: aModelElement
	| controller figure |
	self controllers detect: [ :ctrl | ctrl model = aModelElement ] ifFound: [ ^ self ].
	controller := self createController: aModelElement.
	controller diagramController: self.
	self controllers add: controller.
	controller registerModelEvents: controller model.
	figure := controller figure.
	figure view ifNil: [ figure renderIn: self view ].
	self diagramController figureAdded: figure.
	^ controller