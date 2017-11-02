api - retrieving
modelsForEnterprise: anEnterprise
	models ifNil: [ models := Dictionary new ].
	^ models
		at: anEnterprise
		ifAbsentPut: [ ((api modelsForEnterprise: anEnterprise) groupedBy: #modelId) values
				sorted: [ :a :b | a anyOne label < b anyOne label ] ]