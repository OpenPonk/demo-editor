as yet unclassified
connectControlBox: aBox with: aTransaction
	aBox buttons
		do: [ :each | 
			"each
				when: DSHover
				do: [ :evt | 
					aTransaction core icon: each icon.
					aTransaction action ]."
			each
				when: DSCompleted
				do: [ :evt | 
					aTransaction core icon: each icon.
					aTransaction noAction.
					each model = #ac
						ifTrue: [ aTransaction fullCompletedAction ]
						ifFalse: [ aTransaction completedAction ] ].
			each
				when: DSEnabled
				do: [ :evt | 
					aTransaction core icon: (each previousButton ifNil: [ aBox buttons first ]) icon.
					aTransaction noAction ] ]