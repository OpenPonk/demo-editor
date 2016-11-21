as yet unclassified
addInteractions
	| menu |
	super addInteractions.
	self core
		addCallback:
			(TRTranslationCallback
				block: [ :aShape :aStep | 
					initiatorSpot translateBy: aStep.
					executorSpot translateBy: aStep.
					self view pushBackEdges ]).
	menu := PluggableMenuSpec new model: self core.
	menu add: 'Flip' action: (MessageSend receiver: self selector: #flipTransaction).
	self core when: TRMouseRightClick do: [ :event | menu asMenuMorph popUpInWorld ]