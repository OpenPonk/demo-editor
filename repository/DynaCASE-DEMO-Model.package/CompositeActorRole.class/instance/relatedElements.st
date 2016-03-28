accessing
relatedElements
	^ super relatedElements
		addAll: self elements;
		yourself