accessing
elementWithUuid: aUUID
	^ model elements detect: [ :each | each uuid = aUUID ]