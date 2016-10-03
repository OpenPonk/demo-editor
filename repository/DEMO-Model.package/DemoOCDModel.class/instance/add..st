adding
add: anElement
	anElement demoId ifNil: [ anElement demoId: (self uniqueIdFor: anElement) ].
	elements add: anElement.
	anElement owner: self