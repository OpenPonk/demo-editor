as yet unclassified
randomLinesFor: aModel
	| transactions lines |
	transactions := aModel elements select: #isTransactionKind.
	lines := Dictionary new.
	transactions
		do: [ :each | 
			| init exec |
			init := each initiators first.
			exec := each executor.
			lines at: init name ifAbsentPut: Dictionary new.
			lines at: exec name ifAbsentPut: Dictionary new.
			(lines at: init name) at: each name ifAbsentPut: Dictionary new.
			(lines at: exec name) at: each name ifAbsentPut: Dictionary new.
			#(request accept)
				do: [ :act | ((lines at: init name) at: each name) at: act put: nil ].
			#(promise execute state)
				do: [ :act | ((lines at: exec name) at: each name) at: act put: nil ] ].
	^ lines