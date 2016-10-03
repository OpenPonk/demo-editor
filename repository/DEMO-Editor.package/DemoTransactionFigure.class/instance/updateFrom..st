as yet unclassified
updateFrom: aModel
	self ownedElements second
		model: aModel printDemoId;
		update.
	self ownedElements third
		model: aModel name;
		update.
	self signalUpdate