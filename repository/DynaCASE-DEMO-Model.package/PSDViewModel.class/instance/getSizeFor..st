as yet unclassified
getSizeFor: elementDcID
	^ elementSizes
		at: elementDcID
		ifAbsent: [ Array
				braceWith: 0 @ DEMOConfig PSDTransactionHeight
				with: DEMOConfig PSDSwimlineWidth @ (DEMOConfig PSDSwimlineHeight * 2) ]