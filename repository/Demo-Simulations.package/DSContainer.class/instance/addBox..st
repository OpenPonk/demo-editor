as yet unclassified
addBox: aBox
	self addCallback: (TRTranslationCallback with: aBox).
	self add: aBox.
	aBox addCallback: (TRExtentCallback block: [ :evt | self updateEncompassingSize ]).
	aBox addCallback: (TRTranslationCallback block: [ :evt | self updateEncompassingSize ]).
	self updateEncompassingSize