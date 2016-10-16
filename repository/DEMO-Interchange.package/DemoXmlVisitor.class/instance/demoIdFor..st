utility
demoIdFor: anElement
	^ ((anElement attributeAt: #ExternalId) splitOn: '-') last