events
idChanged: aValue
	| newID |
	newID := [ aValue asNumber ] on: Error do: [ ^ self ].
	(self isIDUsed: newID) ifFalse: [ self model id: newID ]