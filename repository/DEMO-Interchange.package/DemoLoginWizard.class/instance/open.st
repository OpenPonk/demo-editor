instance creation
open
	| wizard |
	wizard := self createWizard.
	wizard
		atEndDo: [ :data | completedBlock value: (data at: #login) -> (data at: #password) ].
	wizard open