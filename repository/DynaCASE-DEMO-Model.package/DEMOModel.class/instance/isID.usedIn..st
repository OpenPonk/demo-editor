private
isID: anID usedIn: aCollection
	aCollection detect: [ :each | each id = anID ] ifFound: [ ^ true ] ifNone: [ ^ false ]