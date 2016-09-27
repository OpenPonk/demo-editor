interactions
move: anElement with: aBackground
	| block |
	block := [ :shape :step | anElement translateBy: step ].
	aBackground addCallback: (TRTranslationCallback block: block).
	aBackground addCallback: (TRExtentCallback block: block)