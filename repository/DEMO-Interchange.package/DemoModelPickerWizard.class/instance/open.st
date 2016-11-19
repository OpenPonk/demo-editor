opening
open
	| wizard |
	wizard := self createWizard.
	wizard
		atEndDo: [ :data | 
			completeBlock
				value: (self versionForModel: data @ #modelSelection version: data @ #versionSelection) ].
	wizard open