positioning
getSizeFor: elementDcID
	^ elementSizes
		at: elementDcID
		ifAbsent: [ Array
				braceWith: 20 @ DEMOConfig PSDTransactionHeight
				with: DEMOConfig PSDSwimlineWidth @ (DEMOConfig PSDSwimlineHeight * 2) ]