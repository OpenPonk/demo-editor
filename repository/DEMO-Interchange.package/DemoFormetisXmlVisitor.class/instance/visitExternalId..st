visiting - attributes
visitExternalId: anElement
	| parts |
	parts := anElement stringValue splitOn: '-'.
	parts size = 2
		ifTrue: [ modelObject demoId: parts second asNumber ]
		ifFalse: [ modelObject name: anElement stringValue ]