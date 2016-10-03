as yet unclassified
updateFrom: aModel
	self ownedElements first
		model: aModel printDemoId;
		update.
	self ownedElements second
		model: aModel name;
		update.
	self signalUpdate