as yet unclassified
connectControlBox: aBox with: aCommunication
	aBox buttons
		do: [ :each | 
			each
				when: DSHover
				do: [ :evt | 
					aCommunication icon: each icon.
					aCommunication action ].
			each
				when: DSCompleted
				do: [ :evt | 
					aCommunication icon: each icon.
					aCommunication noAction ].
			each
				when: DSEnabled
				do: [ :evt | 
					aCommunication icon: (each previousButton ifNil: [ aBox buttons first ]) icon.
					aCommunication noAction ] ]