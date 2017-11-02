api - retrieving
enterprises
	^ enterprises
		ifNil: [ enterprises := api enterprises sorted: [ :a :b | (a at: #name) < (b at: #name) ] ]