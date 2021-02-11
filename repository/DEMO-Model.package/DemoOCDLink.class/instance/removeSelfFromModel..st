removing
removeSelfFromModel: aModel
	isExecutorLink ifTrue: [ source executorRole: nil ] ifFalse: [ source initiatorRole: nil ].
	aModel removeOCDLink: self