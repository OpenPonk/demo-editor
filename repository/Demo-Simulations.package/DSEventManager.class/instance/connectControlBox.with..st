as yet unclassified
connectControlBox: aBox with: aTransaction
	1halt.
	aBox buttons
		do: [ :each | 
			each
				when: DSHover
				do: [ :evt | 
					1halt.
					aTransaction core icon: each icon.
					aTransaction action ].
			each
				when: DSCompleted
				do: [ :evt | 
					aTransaction core icon: each icon.
					aTransaction noAction ].
			each
				when: DSEnabled
				do: [ :evt | 
					1halt.
					aTransaction core icon: (each previousButton ifNil: [ aBox buttons first ]) icon.
					aTransaction noAction ] ]