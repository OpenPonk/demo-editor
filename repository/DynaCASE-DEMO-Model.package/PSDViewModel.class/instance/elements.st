accessing
elements
	elements := OrderedCollection new.
	elements addAll: transactionKinds.
	elements addAll: processLinks.
	^ elements