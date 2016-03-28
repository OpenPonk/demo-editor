accessing
relatedElements
	^ OrderedCollection new
		addAll: (owner relatedLinksWith: self);
		yourself