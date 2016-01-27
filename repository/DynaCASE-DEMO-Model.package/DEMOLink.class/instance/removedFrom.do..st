removing
removedFrom: anOwner do: aBlock
	aBlock value.
	owner := nil.
	self changed