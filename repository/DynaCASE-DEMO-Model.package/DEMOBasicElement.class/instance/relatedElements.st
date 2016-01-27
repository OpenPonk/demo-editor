as yet unclassified
relatedElements
	^ OrderedCollection new
		addAll: (owner relatedLinksWith: self);
		yourself