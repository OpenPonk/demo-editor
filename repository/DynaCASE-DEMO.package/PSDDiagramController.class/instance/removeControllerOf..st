as yet unclassified
removeControllerOf: aModelElement
	| controller |
	controller := self controllers detect: [ :ctrl | ctrl model = aModelElement ] ifNone: [ ^ self ].
	self controllers remove: controller.
	controller remove.
	transControllers remove: controller 