as yet unclassified
getRelevantModelElements
| relevantElements |
	relevantElements := OrderedCollection new.
	relevantElements addAll: model transactionKinds.
	relevantElements addAll: model productKinds.
	^ relevantElements 